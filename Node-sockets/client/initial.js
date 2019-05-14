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
var color = tinycolor("hsl(0, 100%, 50%)")
console.log(color)
console.log(color.toRgbString())

if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    DEVICE_EVENT = 'touchstart'
    if (window.DeviceOrientationEvent) {
        window.addEventListener("deviceorientation", handleOrientation, false);
        setTimeout(() => {
            if(COMPASS_DIR == -1000) {
                Swal.fire({
                    text: '設定 > Safari > 動作與定向取用',
                    imageUrl: './img/notice.gif',
                    imageWidth: window.outerWidth / 2,
                    imageHeight: window.outerWidth / 2 * 1.65,
                    width: window.outerWidth / 1.3,
                    imageAlt: 'Notice',
                    padding: '1em',
                    animation: true,
                    heightAuto: false,
                })
            }
        }, 300);
    } else {
        alert('device does not support DeviceOrientation')
    }
}

$(document).ready(function () {
    document.addEventListener(device_event, initial)

});

function initial() {
    if (Tone.context.state !== 'running') {
        Tone.context.resume();
    }

    NO_SLEEP.enable();
    openFullscreen()
    bodyScrollLock.disableBodyScroll(window);
    disableZoom()
    START = true;
}


function disableZoom() {
  document.addEventListener('touchstart', (event) => {
    if (event.touches.length > 1) {
       event.preventDefault();
    }
  }, { passive: false });
  
  let lastTouchEnd = 0;
  document.addEventListener('touchend', (event) => {
    const now = (new Date()).getTime();
    if (now - lastTouchEnd <= 300) {
      event.preventDefault();
    }
    lastTouchEnd = now;
  }, false);

}

function openFullscreen() {
    if (document.documentElement.requestFullscreen) {
        document.documentElement.requestFullscreen();
    } else if (document.documentElement.mozRequestFullScreen) {
        /* Firefox */
        document.documentElement.mozRequestFullScreen();
    } else if (document.documentElement.webkitRequestFullscreen) {
        /* Chrome, Safari and Opera */
        document.documentElement.webkitRequestFullscreen();
    } else if (document.documentElement.msRequestFullscreen) {
        /* IE/Edge */
        document.documentElement.msRequestFullscreen();
    }
}