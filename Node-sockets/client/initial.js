var isMobile = false
var start = false
var event = 'click'
if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
    event = 'touchstart'
}


function initial() {
    var noSleep = new NoSleep();
    noSleep.enable();
    if (Tone.context.state !== 'running') {
        Tone.context.resume();
    }
    // playSound()
    // $(document).on(event, sound);
    document.removeEventListener
    (event,initial)
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