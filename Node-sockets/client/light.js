var delay = 0;
var duration = 100;
var endDelay = 0;
var loopTime = 1;
var direction = 'alternate';
var animeing = false;
var animation = null;
var colors = [ "0, 100%, 100%", "58, 100%, 68%", "0, 100%, 68%", "196, 100%, 68%"]
var rgbcolors = ["255, 255, 255", "255, 250, 92", "255, 92, 92", "92, 211, 255"]
var blink_sound = []
var mode = 'stop';

for (var i = 0; i <= 3; i++) {
    blink_sound[i] = new Tone.Player(`./music/sample_0${i+1}.wav`).toMaster();
}






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
        if (data.uuid.includes(uuid)) {
            delay = Math.random()*data.random;
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