var noSleep = new NoSleep();
var isMobile = false
var start = false
var device_event = 'click'
var compassdir = -1000;
var reload = false

let handleOrientation = () => {
    if (event.webkitCompassHeading) {
        compassdir = event.webkitCompassHeading;
    } else {
        compassdir = event.alpha;
    }
}


if (performance.navigation.type == 1) {
    reload = true
} else {
    reload = false
}



if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    device_event = 'touchstart'
    if (window.DeviceOrientationEvent) {
        window.addEventListener("deviceorientation", handleOrientation, false);
        setTimeout(() => {
            if(compassdir == -1000) {
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