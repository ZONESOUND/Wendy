const socket = io('http://localhost:8000')
const blink_sound = new Tone.Player("./music/Oneshot.wav").toMaster();

var uuid;
var delay = 0;
var duration = 500;
var direction = 'alternate';

socket.on('connect', () => {
    uuid = generate_uuid()
    socket.emit('connected', {
        uuid: uuid
    })

    socket.on('broadcast', (data) => {
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
        
        
    });

    

})

$(document).ready(function(){
    $("#b").click(playSound);
});

function playSound() {
   // alert("playSOund");
    blink_sound.start()
}

function changeColor(lightness) {
    
    anime({
        targets: 'body',  
        duration: duration,
        direction: direction,
        background: 'hsla(0, 100%, 0%, '+lightness.toString()+')',
        endDelay: 1000,
        delay: delay,
        easing: 'easeInOutQuad'
        //loop: true
    });

}

window.addEventListener('beforeunload', function (e) {
    socket.emit('disconnected',{
        uuid: uuid
    })
});


function generate_uuid() {
    var d = Date.now();
    if (typeof performance !== 'undefined' && typeof performance.now === 'function') {
        d += performance.now(); //use high-precision timer if available
    }
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = (d + Math.random() * 16) % 16 | 0;
        d = Math.floor(d / 16);
        return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
    });
}