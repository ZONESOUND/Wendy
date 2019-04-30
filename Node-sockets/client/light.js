var delay = 0;
var duration = 50;
var endDelay = 0;
var loop = 5;
var direction = 'alternate';

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
            changeColor(0);
            setTimeout(function() {
                if (blink_sound.state == "stopped") {
                    blink_sound.restart();
                }
                console.log("blink: "+blink_sound.state);
            }, delay);
            //$('body').css('background-color', `${data.color}`)
            
        }
    } else if (data.mode == "light") {
        direction = 'normal';
        duration = 10;
        changeColor(data.percentage);
    } 

}


function playSound() {
    //blink_sound.start()
    changeColor(0);
}

function changeColor(lightness) {
    var n = Math.floor(Math.random() * 100)
    console.log(n)
    anime({
        targets: 'body',  
        duration: duration,
        direction: direction,
        background: "hsla(0, 100%, " + n + "%," + lightness.toString() + ')',
        endDelay: endDelay,
        delay: delay,
        easing: 'easeInOutQuad',
        loop: loop*2
    });

}