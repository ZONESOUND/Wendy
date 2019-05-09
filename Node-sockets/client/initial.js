var noSleep = new NoSleep();
var isMobile = false
var start = false
var event = 'click'
var compassdir = 0;

let handleOrientation = () => {
    if (event.webkitCompassHeading) {
        compassdir = event.webkitCompassHeading;
    } else {
        compassdir = event.alpha;
    }
}

if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    event = 'touchstart'
    if (window.DeviceOrientationEvent) {
        window.addEventListener("deviceorientation", handleOrientation, true);
    } else {
        console.log("device does not support DeviceOrientation");
    }
}



function initial() {
    if (Tone.context.state !== 'running') {
        Tone.context.resume();
    }
    // playSound()
    // $(document).on(event, sound);
    noSleep.enable();
    start = true
}

function checkState() {
    console.log(Tone.context.state)
}

// function sound() {
//     var tremolo = new Tone.Tremolo(9, 0.75).toMaster().start();
//     var oscillator = new Tone.Oscillator().connect(tremolo);
//     if (oscillator.state == 'started') {
//         oscillator.stop()
//     } else {
//         oscillator.start()
//     }
// }