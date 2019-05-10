var noSleep = new NoSleep();
var isMobile = false
var start = false
var device_event = 'click'
var compassdir = 0;

let handleOrientation = () => {
    if (event.webkitCompassHeading) {
        compassdir = event.webkitCompassHeading;
    } else {
        compassdir = event.alpha;
    }
}



if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    device_event = 'touchstart'
    if (window.DeviceOrientationEvent) {
        window.addEventListener("deviceorientation", handleOrientation, false);
    } else {
        alert('device does not support DeviceOrientation')
        // console.log("device does not support DeviceOrientation");
    }
}

$(document).ready(function () {
    document.addEventListener(device_event, initial)
    document.addEventListener('scroll', noScroll)
});



function initial() {
    if (Tone.context.state !== 'running') {
        Tone.context.resume();
    }
    noSleep.enable();
    start = true
}

function noScroll() {
    window.scrollTo(0, 0)
}