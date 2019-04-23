const http = require('http');
const socketio = require('socket.io');
const port = process.env.PORT || 8000
const connection_clint = []
const color = ['red','blue','green','black']

const server = http.createServer((req, res) => {
    res.end("I am connected!")
});

const io = socketio(server);

io.on('connection', (socket, req) => {
    socket.emit('welcome', {
        'welcome': 'Welcome!!'
    })

    socket.on('send',(data) => {
        io.emit('broadcast', {
            uuid: connection_clint[0],
            color: data.data[0]
        });
    })

    socket.on('connected', (data) => {
        connection_clint.push(data.uuid)
        console.log(connection_clint.length)
    })

    socket.on('disconnected',(data) => {
        var arr = arr.sort(randomsort);
        var index = arr.indexOf(data.uuid)
        connection_clint.splice(index, 1)
        console.log('disconnectd:',data)
        console.log(connection_clint.length)
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

function randomsort(a, b) {
    return Math.random() > .5 ? -1 : 1;
}

