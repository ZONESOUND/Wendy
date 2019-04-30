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

function checkLightMode(data) {
    delay = 0;
    if (data.mode == "blink") {

        console.log(data.uuid, uuid);
        if (data.uuid.includes(uuid)) {
            console.log("go!"+data.random+delay);
            if (data.random == "true") {
                delay = Math.random()*1000;
                console.log("delay?"+delay);
            }
            duration = data.duration;
            direction = 'alternate';
            changeColor(1, data.colorInd);
            setTimeout(function() {
                if (blink_sound.state == "stopped") {
                    blink_sound.restart();
                }
                //console.log("blink: "+blink_sound.state);
            }, delay);
            //$('body').css('background-color', `${data.color}`)
            
        }
    } else if (data.mode == "light") {
        direction = 'normal';
        duration = 10;
        loopTime = 1;
        if (animation != null) {
            animation.pause();
            animation = null;
        }
        //console.log("light:"+data.percentage.toString());
        changeColor(data.percentage, data.colorInd);
    } 

}


function playSound() {
    blink_sound.start();
}

function changeColor(lightness, colorInd) {
    console.log(colorInd);
    console.log("hsla(" + colors[colorInd] + "," + lightness.toString() + ")");
    if (animation != null) return;
    animation = anime({
        targets: '#inner',  
        duration: duration,
        direction: direction,
        //background: "hsla(0, 100%, 100%, 1)",
        background: "hsla(" + colors[colorInd] + "," + lightness.toString() + ")",
        endDelay: endDelay,
        delay: delay,
        easing: 'easeInOutQuad',
        loop: loopTime*2
    });

    animation.finished.then(function() {
        animation = null;
    });

}