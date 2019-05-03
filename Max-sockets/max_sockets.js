// --------------------------------------------------------------------------
// max_sockets.js - a generic Node/Express application that serves up the
//                  requested web pages, and manages a socket connection
//                  with any requesting pages. This is part of the Node for
//                  Max system for Max 8.
// --------------------------------------------------------------------------


const Max = require("max-api");
var socket = require('socket.io-client')('https://two-ways-transmission.herokuapp.com/');
// var socket = require('socket.io-client')('http://localhost:8000');
var prevTime = new Date();
var prevTime_recieve = new Date();



socket.on('connect', (data) => {
    socket.on('welcome', (message) => {
		Max.post(message)
		Max.outlet(message)
	});

    socket.on('maxRecieve', (message) => {
			if (new Date() - prevTime_recieve < 100) return;
			prevTime_recieve = new Date()
			Max.post(message)
			Max.outlet(message)
    });
		

    socket.emit('message', {
    	data: 'I am so excited I am connected! It is like Christmas!'
    })

    const sender = function (data) {

		//Max.post("percentage:" + percentage);
			Max.post(data);
			socket.emit('send', data)
		};


    Max.addHandler("light", (...args) => {
			Max.post("light args[0]:" + args[0]/100);
			colorInd = 0;
			if (args.length > 1) colorInd = args[1]; 
			sender(fillData("light", args[0]/100., colorInd));
		
	});

	Max.addHandler("blink", (...args) => {
		if (new Date() - prevTime < 300) return;
    	prevTime = new Date();
		Max.post("blink args[0]:" + args[0]/100.);
		//args[0] percentage
		random = 0;
		keepBlink = 1;
		colorInd = 0;
		if (args.length > 1) colorInd = args[1]
		if (args.length > 2) keepBlink = args[2];
		if (args.length > 3) random = args[3];
		sender(fillData("blink", args[0]/100., colorInd, random, keepBlink));

	});
})

function fillData(mode, percentage, colorInd=0, random=0, keepBlink=1) {
	return data = {
		mode: mode,
		percentage: percentage,
		keepBlink: keepBlink,
		colorInd: colorInd,
		random: random
	};
}

// Max.addHandler(Max.MESSAGE_TYPES.ALL, (handled, ...args) => {
// 	if (!handled) {
// 		Max.post('No client connected.')
// 		// just consume the message
// 	}
// 	Max.post('client connected.')
// });

//console.log("setting up max handlers");

