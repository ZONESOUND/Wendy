const socket = io('https://two-ways-transmission.herokuapp.com/')
//const socket = io('http://localhost:8000')
// const socket = io('172.20.10.3:8000')


socket.on('connect', () => {

    console.log("connect");
    if(UUID == null) {
        UUID = generate_uuid()
        localStorage.setItem("uuid", UUID);
    }

    socket.emit('connected', {
        uuid: UUID
    })

    socket.on('clientRecieve', (data) => {
        console.log('clientRecieve: ' + data.status)
        if(data.compass) {
            RECEIVE_BUTTON_CLICK = data.shoot
            return
        }
        checkLightMode(data);  
        checkShootStatus(data);
        checkNoiseStatus(data)
    });
    
})

socket.on('disconnect', function () {
    console.log('user disconnected');
});


function send(data) {
    socket.emit("clientSend", data);
}



window.addEventListener('beforeunload', function (e) {
    socket.emit('disconnected',{
        uuid: UUID
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