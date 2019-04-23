// --------------------------------------------------------------------------
// max_sockets.js - a generic Node/Express application that serves up the
//                  requested web pages, and manages a socket connection
//                  with any requesting pages. This is part of the Node for
//                  Max system for Max 8.
// --------------------------------------------------------------------------


const Max = require("max-api");
var socket = require('socket.io-client')('http://172.20.10.3:8000');


socket.on('connect', (data) => {
    socket.on('welcome', (message) => {
		Max.post(message)
		Max.outlet(message)
	});

    socket.on('test', (message) => {
    	Max.post(message)
		Max.outlet(message)
    });
	

    socket.emit('message', {
    	data: 'I am so excited I am connected! It is like Christmas!'
    })

    const sender = function (color) {
		socket.emit('send', {
	    	data: color
	    })
	};

    Max.addHandler("send", (...args) => {
		Max.post("send args[0]:" + args[0]);
		sender(args);
		
	});
})

Max.addHandler(Max.MESSAGE_TYPES.ALL, (handled, ...args) => {
	if (!handled) {
		Max.post('No client connected.')
		// just consume the message
	}
	//Max.post('client connected.')
});

//console.log("setting up max handlers");

