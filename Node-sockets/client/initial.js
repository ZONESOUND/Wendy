var NO_SLEEP = new NoSleep();
var START = false;
var DEVICE_EVENT = 'click'
var COMPASS_DIR = -1000;
var UUID = localStorage.getItem("uuid");
var RECEIVE_BUTTON_CLICK = 0;
var CLICK_NUMBER = 0;


let handleOrientation = () => {
    if (event.webkitCompassHeading) {
        COMPASS_DIR = event.webkitCompassHeading;
    } else {
        COMPASS_DIR = event.alpha;
    }
}


if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    DEVICE_EVENT = 'touchstart'
    if (window.DeviceOrientationEvent) {
        window.addEventListener("deviceorientation", handleOrientation, false);
        setTimeout(() => {
            if(COMPASS_DIR == -1000) {
                Swal.fire({
                    // title: 'Notice!',
                    text: 'Please turn on your orientation setting.',
                    imageUrl: './img/notice.gif',
                    imageWidth: 230,
                    imageHeight: 380,
                    imageAlt: 'Notice',
                    padding: '1em',
                    animation: true,
                    heightAuto: true
                })
            }
        }, 300);
    } else {
        alert('device does not support DeviceOrientation')
    }
}

$(document).ready(function () {
    document.addEventListener(DEVICE_EVENT, initial);
    document.addEventListener('scroll', noScroll);
    
});

function initial() {
    if (Tone.context.state !== 'running') {
        Tone.context.resume();
    }
    NO_SLEEP.enable();
    START = true;
}

function noScroll() {
    window.scrollTo(0, 0)
}