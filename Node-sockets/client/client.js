const socket = io('https://two-ways-transmission.herokuapp.com/')
var uuid;

socket.on('connect', () => {
    console.log("connect");
    uuid = generate_uuid()
    socket.emit('connected', {
        uuid: uuid
    })

    socket.on('broadcast', (data) => {
        checkLightMode(data);  
    });

})

$(document).ready(function(){
    $(document).one(event, initial)

});


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