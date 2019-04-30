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
var blink_sound = []


for (var i = 0; i <= 3; i++) {
    blink_sound[i] = new Tone.Player(`./music/LTVM_A_Oneshot_0${i+1}.wav`).toMaster();
}


function checkLightMode(data) {
    delay = 0;
    if (data.mode == "blink") {

        //console.log(data.uuid, uuid);
        if (data.uuid.includes(uuid)) {
            if (data.random == "true") {
                delay = Math.random()*1000;
            }
            duration = data.duration;
            direction = 'alternate';

            changeColor(1, data.order);
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
        changeColor(data.percentage, data.order);
    } 

}


function playSound(sound) {
    if(sound) {
        if (sound.state == "stopped") {
            sound.start();
        }
    } 

}

function changeColor(lightness, order) {
    //console.log(order);
    console.log("hsla(" + colors[order] + "," + lightness.toString() + ")");
    if (animation != null) return;

    setTimeout(function () {
        playSound(blink_sound[order])
    }, delay);

    animation = anime({
        targets: '#inner',  
        duration: duration,
        direction: direction,
        //background: "hsla(0, 100%, 100%, 1)",
        background: "hsla(" + colors[order] + "," + lightness.toString() + ")",
        endDelay: endDelay,
        delay: delay,
        easing: 'easeInOutQuad',
        loop: loopTime*2
    });



    animation.finished.then(function() {
        animation = null;
    });

}