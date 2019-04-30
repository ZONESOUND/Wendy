var delay = 0;
var duration = 500;
var endDelay = 500;
var loopTime = 1;
var direction = 'alternate';
var animeing = false;
var animation = null;
var blink_sound = []
var order = 0;


for (var i = 0; i <= 3; i++) {
    blink_sound[i] = new Tone.Player(`./music/LTVM_A_Oneshot_0${i+1}.wav`).toMaster();
}


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
            changeColor(1);
            order = data.order
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
        changeColor(data.percentage);
    } 

}


function playSound(sound) {
    if(sound) {
        if (sound.state == "stopped") {
            sound.start();
        }
    } 

}

function changeColor(lightness) {
    
    if (animation != null) return;

    setTimeout(function () {
        playSound(blink_sound[order])
    }, delay);

    animation = anime({
        targets: '#inner',  
        duration: duration,
        direction: direction,
        background: "hsla(0, 100%, 100%," + lightness.toString() + ")",
        endDelay: endDelay,
        delay: delay,
        easing: 'easeInOutQuad',
        loop: loopTime*2
    });



    animation.finished.then(function() {
        animation = null;
    });

}