// --------------------------------------------------------------------------
// max_sockets.js - a generic Node/Express application that serves up the
//                  requested web pages, and manages a socket connection
//                  with any requesting pages. This is part of the Node for
//                  Max system for Max 8.
// --------------------------------------------------------------------------


const Max = require("max-api");
var socket = require('socket.io-client')('http://localhost:8000');
var prevTime = new Date();

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

    const sender = function (mode, percentage, random) {
    	if (new Date() - prevTime < 300) return;
    	prevTime = new Date();
		Max.post("percentage:" + percentage);
		socket.emit('send', {
	    	mode: mode, 
	    	percentage: percentage,
	    	random: random
	    })
	};


    Max.addHandler("light", (...args) => {
		Max.post("light args[0]:" + args[0]/100);
		sender("light", args[0]/100., false);
		
	});

	Max.addHandler("blink", (...args) => {
		Max.post("blink args[0]:" + args[0]/100.);
		//args[0] percentage
		var random = false;
		if (args.length > 1) random = args[1];
		sender("blink", args[0]/100., random);

	});
})

// Max.addHandler(Max.MESSAGE_TYPES.ALL, (handled, ...args) => {
// 	if (!handled) {
// 		Max.post('No client connected.')
// 		// just consume the message
// 	}
// 	Max.post('client connected.')
// });

//console.log("setting up max handlers");

