var delay = 0;
var duration = 100;
var endDelay = 0;
var loopTime = 1;
var direction = 'alternate';
var animeing = false;
var animation = null;

var colors = ["0, 100%, 100%",
"58, 100%, 68%",
"0, 100%, 68%",
"196, 100%, 68%"]

/*

255,64,255 m
255,251,0 y
0, 253, 255 c

r
g
b

150,0,150 purple
255,191,0 yellow
*/



var rgbcolors = [
"255, 255, 255", 
"255,64,255",
"255,251,0",
"0, 0, 255",
"0, 253, 255",
//
"255, 0, 0",
"0, 255, 0",
"0, 0, 255",
"150,0,150", 
"255,191,0",
//
"255, 255, 255", 
"255,64,255",
"255,251,0",
"0, 0, 255",
"0, 253, 255",
//
"255, 0, 0",
"0, 255, 0",
"0, 0, 255",
"150,0,150", 
"255,191,0",
]

var blink_sound = []
var fx_sound = [];
var mode = 'stop';
var fft, meter;
var waveform;

// for (var i = 0; i <= 3; i++) {
//     blink_sound[i] = new Tone.Player(`./music/sample_0${i+1}.wav`).toMaster();
// }

meter = new Tone.Meter('level');
fft = new Tone.Analyser('fft', 64);
waveform = new Tone.Analyser('waveform', 32);

for (var i=0; i<4; i++) {
    for (var j=0; j<5; j++) {
        blink_sound[i*5+j] = new Tone.Player(`./music/iPad_FX_Samples/sample_${i+1}-${j+1}.wav`).connect(meter).connect(waveform).connect(fft).toMaster();
    }
}


function checkLightMode(data) {
    if (data.mode == undefined) return;
    //console.log("data:\n"+data.color);
    delay = 0;
    mode = data.mode
    //console.log(mode)
    order = data.order;
    if (order >= rgbcolors.length) {
        order = Math.floor(Math.random()*rgbcolors.length);
    }
    if (data.order_to != undefined && data.order_to > data.order) {
        order = data.order + Math.floor(Math.random()*(data.order_to-data.order+1));
    }
    //console.log(order);
    if (data.color == undefined) {
        console.log("data color undefined");
        color = rgbcolors[order];
    } else {
        color = data.color;
    }

    if (mode == "blink") {
        if (data.uuid.includes(UUID)) {
            delay = Math.random()*data.random;
            if (data.self != undefined && data.self == 1) {
                genColorFromSound(order, color);
            } else {
                duration = data.duration;
                direction = 'alternate';
                if (data.endDelay == undefined)
                    endDelay = 0;
                else endDelay = data.endDelay;
                if (data.times == undefined)
                    loopTime = 1;
                else loopTime = data.times;
                //if (data.randomcolor == 0) {
                changeColor(1, color, blink_sound[order]);
                // } else {
                //     var loopTimeTemp = loopTime;
                //     loopTime = 1;
                //     for (let i=0; i<loopTimeTemp; i++) {
                //         setTimeout(function() {
                //             changeColor(1, color[i], blink_sound[order]);
                //         }, duration*i);
                //     }
                // }
            }
            //setTimeout(function() {
                // if (blink_sound.state == "stopped") {
                //     blink_sound.restart();
                // }
                //console.log("blink: "+blink_sound.state);
            //}, delay);
            //$('body').css('background-color', `${data.color}`)
            
        }
    } else if (mode == "light") {
        direction = 'normal';
        if (data.duration == undefined)
            duration = 800;
        else duration = data.duration;
        loopTime = 1;
        endDelay = 0;
        if (animation != null) {
            animation.pause();
            animation = null;
        }
        
        changeColor(data.percentage, color, blink_sound[order]);
    }

}

var soundInt = null;
var euro;
var multi = 7;
var colorAnime = null;

function genColorFromSound(ind, color) {
    blink_sound[ind].start();
    euro = new OneEuroFilter(200);
    if (soundInt != null) clearInterval(soundInt);

    soundInt = setInterval(function(ind, color) {
        if (blink_sound[ind].state == "stopped") {
            clearInterval(soundInt);
            soundInt = null;
            
            anime({
                targets: '#inner',  
                duration: 1000,
                background: `rgba(255,255,255,0)`,
                easing: 'easeInOutSine',
                delay: 1
            });

        } else {
            
            var waveData = waveform.getValue();
            var max = Math.max.apply(Math, waveData);
            var min = Math.min.apply(Math, waveData)*-1;
            var r = Math.max(max, min);
            r *= multi;
            if (r > 1) {
                r = 1;
            } else if (r < 0.2 && r != 0) {
                r = 0.2;
            }

            var euroOut = euro.filter(r);
            // $("#inner").css("background", `rgba(${color},${euroOut})`);
            anime({
                targets: '#inner',  
                background: `rgba(${color},${euroOut})`
            });
        }
        
    }, 1, ind, color);

}



function playSound(sound) {
    if(sound) {
        sound.start();
        // if (sound.state == "stopped") {
        //     sound.start();
        // }
    } 

}

function changeColor(lightness, rgb, sound) {
    //alert(rgb);
    if (animation != null) return;
    if (rgb == undefined) {
        console.log('rgb undefied!!!!')
        return
    }
    console.log('change Color!'+ rgb);
    // console.log("hsla(" + colors[order] + "," + lightness.toString() + ")");
    if(direction != 'normal') {
        setTimeout(function () {
            playSound(sound)
        }, delay);
    }


    animation = anime({
        targets: '#inner',  
        duration: duration,
        direction: direction,
        background: "rgba("+rgb+", "+lightness.toString()+")",
        //background: "rgb("+ rgb +")",
        //opacity: lightness,
        //opacity: 0
        //background: "hsla(" + colors[order] + "," + lightness.toString() + ")",
        endDelay: endDelay,
        delay: delay,
        easing: 'easeInOutQuad',
        loop: loopTime*2
    });


    animation.finished.then(function() {
        
        if (mode != "light" || lightness == 0) mode = "stop"
        // console.log("animation done"+mode);
        animation = null;
    });

}