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

var rgbcolors = ["255, 255, 255", 
"255, 250, 92",
"255, 92, 92",
"92, 211, 255"
]
var blink_sound = []
var fx_sound = [];
var mode = 'stop';


for (var i = 0; i <= 3; i++) {
    blink_sound[i] = new Tone.Player(`./music/sample_0${i+1}.wav`).toMaster();
}
// for (var i=0; i<2; i++) {
//     for (var j=0; j<4; j++) {
//         fx_sound[i*4+j] = new Tone.Player(`./music/FX/FX${i+1}_${j+1}.wav`).toMaster();
//     }
// }


function checkLightMode(data) {
    if (data.mode == undefined) return;
    delay = 0;
    mode = data.mode
    console.log(mode)
    order = data.order;
    if (order >= rgbcolors.length) {
        order = Math.floor(Math.random()*rgbcolors.length);
    }
    if (data.color == undefined) {
        color = rgbcolors[order];
    } else {
        color = data.color;
    }

    if (mode == "blink") {
        if (data.uuid.includes(UUID)) {
            delay = Math.random()*data.random;
            // console.log("delay: "+delay);
            duration = data.duration;
            direction = 'alternate';
            if (data.endDelay == undefined)
                endDelay = 0;
            else endDelay = data.endDelay;
            if (data.times == undefined)
                loopTime = 1;
            else loopTime = data.times;
            changeColor(1, color, blink_sound[order]);
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
        
        //console.log("light:"+data.percentage.toString());
        changeColor(data.percentage, color, blink_sound[order]);
    }

}


function playSound(sound) {
    if(sound) {
        sound.start();
        // if (sound.state == "stopped") {
        //     sound.start();
        // }
    } 

}

var soundInt;
var maxV = 0;
var vList = [];
var euro;
function changeColorWithSound() {
    euro = new OneEuroFilter(100);

    soundInt = setInterval(function(){
        if (!sound.isPlaying) clearInterval(soundInt);
        if(amplitude.getLevel() > maxV) {
            maxV = amplitude.getLevel();
        }
        var t = euro.filter(3*amplitude.getLevel())
        console.log(t);
        anime({
            targets: '#inner',  
            duration: 10,
            background: `rgba(255,255,255,${t})`,
            easing: 'easeInOutQuad'
        });
    }, 10);
    //changeColor(amplitude.getLevel(), "255,255,255", );
}

function smooth (list, degree) {
    var win = degree*2-1;
    weight = _.range(0, win).map(function (x) { return 1.0; });
    weightGauss = [];
    for (i in _.range(0, win)) {
        i = i-degree+1;
        frac = i/win;
        gauss = 1 / Math.exp((4*(frac))*(4*(frac)));
        weightGauss.push(gauss);
    }
    weight = _(weightGauss).zip(weight).map(function (x) { return x[0]*x[1]; });
    smoothed = _.range(0, (list.length+1)-win).map(function (x) { return 0.0; });
    for (i=0; i < smoothed.length; i++) {
        smoothed[i] = _(list.slice(i, i+win)).zip(weight).map(function (x) { return x[0]*x[1]; }).reduce(function (memo, num){ return memo + num; }, 0) / _(weight).reduce(function (memo, num){ return memo + num; }, 0);
    }
    return smoothed;
}


function changeColor(lightness, rgb, sound) {
    //alert(rgb);
    if (animation != null) return;
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