const http = require('http');
const socketio = require('socket.io');
const port = process.env.PORT || 8000
const connection_client = []
const color = ['red','blue','green','black']

const server = http.createServer((req, res) => {
    res.end("I am connected!")
});

const io = socketio(server);

var duration = 250;
var loop_blink = true;
var interval = null;

io.on('connection', (socket, req) => {
    socket.emit('welcome', {
        'welcome': 'Welcome!!'
    })


    socket.on('message',(data) => {
        //console.log(data);
    })

    socket.on('userfeedback', (data) => {
        console.log('userfeedback:' + JSON.stringify(data))
        io.emit('maxRecieve', data)
    })

    socket.on('send',(data) => { //from MAX
        console.log("send");
        var send_client = connection_client;
        if (interval != null) clearInterval(interval);
        if (data.mode == "blink") {
            send_client = choose_client(data.percentage);
            // console.log(send_client);
            loop_blink = data.keepBlink;

            if (loop_blink) {
                interval = setInterval(function(){
                    blink(data, choose_client(data.percentage));     
                }, 2000);
            }
        } 
        blink(data, send_client);
        
    })

    socket.on('connected', (data) => {
        connection_client.push(data.uuid)
        console.log(connection_client.length)
    })

    socket.on('disconnected',(data) => {
        //var arr = arr.sort(randomsort);
        var index = connection_client.indexOf(data.uuid)
        connection_client.splice(index, 1)
        console.log('disconnectd:',data)
        console.log(connection_client.length)
    })

    // setInterval(() => {
    //     if (connection_clint) {
    //         var index = Math.floor(Math.random()*color.length)
    //         // console.log(index)
    //         io.emit('broadcast', {
    //             uuid: connection_clint[0],
    //             color: color[index]
    //         });
    //     }

    // }, 2000);


})

server.listen(port, function listening() {
    console.log("Listening on %d", server.address().port);
});

function blink(data, send_client) {
    io.emit('broadcast', {
        uuid: send_client,
        percentage: data.percentage,
        mode: data.mode,
        random: data.random,
        order: data.colorInd,
        duration: duration

    });
}

function choose_client(percentage) {
    var send_client = connection_client.sort(randomsort);
    //console.log(Math.ceil(send_client.length*percentage));
    return send_client.slice(0, Math.ceil(send_client.length*percentage));
}

function randomsort(a, b) {
    return Math.random() > .5 ? -1 : 1;
}

