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

var rgbcolors = [];
// ["255, 255, 255", 
// "255, 250, 92",
// "255, 92, 92",
// "92, 211, 255",
// "255, 255, 255", 
// "255, 250, 92",
// "255, 92, 92",
// "92, 211, 255",
// "255, 255, 255", 
// "255, 250, 92",
// "255, 92, 92",
// "92, 211, 255",
// "255, 255, 255", 
// "255, 250, 92",
// "255, 92, 92",
// "92, 211, 255",
// "255, 255, 255", 
// "255, 250, 92",
// "255, 92, 92",
// "92, 211, 255"
// ]

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
initColor();

function initColor() {
    rgbcolors = [[255, 255, 255]];
    rgbcolors = rgbcolors.concat(genColor(0, 4, 1, 1, 50, [100, 100], [73, 73], [0, 0, 0]));
    rgbcolors = rgbcolors.concat(genColor(0, 1, 1, 5, 0, [0], [30, 85], [0, 0, 0]));
    rgbcolors = rgbcolors.concat(genColor(0, 5, 1, 1, 50, [100, 100], [73, 73], [0, 0, 0]));
    rgbcolors = rgbcolors.concat(genColor(0, 5, 1, 1, 50, [100, 100], [73, 73], [0, 0, 0]));
    //genColor(oriH, hSplit, sSplit, lSplit, hNum, sList, lList, offset)
}


function checkLightMode(data) {
    if (data.mode == undefined) return;
    delay = 0;
    mode = data.mode
    console.log(mode)
    order = data.order;
    // if (order >= rgbcolors.length) {
    //     order = Math.floor(Math.random()*rgbcolors.length);
    // }
    if (data.order < 0 || data.order_to < 0 || data.order >= rgbcolors.length || data.order_to  >= rgbcolors.length) {
        order = Math.floor(Math.random()*rgbcolors.length);
    }
    else if (data.order_to != undefined && data.order_to > data.order) {
        order = data.order + Math.floor(Math.random()*(data.order_to-data.order+1));
    }
    console.log(order);

    if (data.color == undefined) {
        color = toColorString(rgbcolors[order]);
        console.log("~"+color);
    } else {
        color = data.color;
    }

    var sound = blink_sound[order];
    if (data.sound == 0) sound = null;

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
                changeColor(1, color, sound);
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
        
        changeColor(data.percentage, color, sound);
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
    console.log('change Color!'+ rgb);
    // console.log("hsla(" + colors[order] + "," + lightness.toString() + ")");
    if(direction != 'normal' && sound != null) {
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