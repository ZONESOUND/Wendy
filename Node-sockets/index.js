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
var interval = null;
var blink_interval = 2000;
var currentTime = new Date()

io.on('connection', (socket, req) => {

    socket.emit('welcome', {
        'welcome': 'Welcome!!'
    })
    
    socket.on('server', () => {
        socket.emit('serverDisplay', {
            'clientList': connection_client
        })
    })

    socket.on('userfeedback', (data) => {
        console.log('userfeedback:' + JSON.stringify(data))
        io.emit('maxRecieve', data)
    })

    socket.on('maxSend',(data) => { //from MAX
        //console.log("send");
        if (data.mode != undefined) {
            var send_client = connection_client;
            
            if (interval != null) clearInterval(interval);
            if (data.mode == "blink") {
                send_client = choose_client(data.percentage);
                if (data.keepBlink) {
                    interval = setInterval(function(){
                        if (data.duration == undefined)
                            data.duration = duration;
                        data.uuid = choose_client(data.percentage);
                        io.emit('clientRecieve', data);
                    }, data.keepBlink);
                }
            } 
            if (data.duration == undefined)
                data.duration = duration;
            data.uuid = send_client;
            //blink(data, send_client);
        } 
        io.emit('clientRecieve', data);

    })

    socket.on('clientSend',(data) => { //from client
        io.emit('maxRecieve', data);
    })

    socket.on('connected', (data) => {
        connection_client.push(data.uuid)
        console.log(connection_client.length)
        io.emit('serverDisplay', {
            'clientList': connection_client
        })
    })

    socket.on('disconnected',(data) => {
        //var arr = arr.sort(randomsort);
        var index = connection_client.indexOf(data.uuid)
        connection_client.splice(index, 1)
        console.log('disconnectd:',data)
        io.emit('serverDisplay', {
            'clientList': connection_client
        })
        
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

// function blink(data, send_client) {
//     io.emit('clientRecieve', {
//         uuid: send_client,
//         percentage: data.percentage,
//         mode: data.mode,
//         random: data.random,
//         order: data.colorInd,
//         duration: duration

//     });
// }

function choose_client(percentage) {
    var send_client = connection_client.sort(randomsort);
    //console.log(Math.ceil(send_client.length*percentage));
    return send_client.slice(0, Math.ceil(send_client.length*percentage));
}

function randomsort(a, b) {
    return Math.random() > .5 ? -1 : 1;
}

