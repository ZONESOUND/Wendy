// --------------------------------------------------------------------------
// max_sockets.js - a generic Node/Express application that serves up the
//                  requested web pages, and manages a socket connection
//                  with any requesting pages. This is part of the Node for
//                  Max system for Max 8.
// --------------------------------------------------------------------------


const Max = require("max-api");
var socket = require('socket.io-client')('https://two-ways-transmission.herokuapp.com/');
//var socket = require('socket.io-client')('http://localhost:8000');
var prevTime = new Date();
var prevTime_recieve = new Date();
var status_arr = ["Light", "Gyro", "Shoot"]
var status = "Light";


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
			socket.emit('maxSend', data)
		};

	Max.addHandler("status", (...args) => {
		Max.post("status:" + status_arr[args[0]]);
		status = status_arr[args[0]];
		sender({status: status});
		
	});

	Max.addHandler("shoot", (...args) => {
		sender(fillShootData(args[0]))
		
	})


  Max.addHandler("light", (...args) => {
		Max.post("light args[0]:" + args[0]/100);
		random = 0;
		keepBlink = 1;
		colorInd = 0;
		colorStr = "";
		if (args.length > 1) colorInd = args[1]; 
		if (args.length > 4) colorStr = args[2]+","+args[3]+","+args[4]; 
		sender(fillLightData("light", args[0]/100., colorInd, random, keepBlink, colorStr));
		
	});

	Max.addHandler("blink", (...args) => {
		if (new Date() - prevTime < 300) return;
    	prevTime = new Date();
			Max.post("blink args[0]:" + args[0]/100.);
			random = 0;
			keepBlink = 1;
			colorInd = 0;
			colorStr = "";
			if (args.length > 1) colorInd = args[1]
			if (args.length > 2) keepBlink = args[2];
			if (args.length > 3) random = args[3];
			if (args.length > 6) colorStr = args[4]+","+args[5]+","+args[6]
			sender(fillLightData("blink", args[0]/100., colorInd, random, keepBlink, colorStr));

	});

	Max.addHandler("light_dict", (...args) => {
		data = args[0]
		for (var key in data) {
			if (data[key] == "*") {
				delete data[key];
			}
		}
		if ("r" in data && "g" in data && "b" in data) {
			data.color = data["r"]+","+data["g"]+","+data["b"];
			delete data["r"];
			delete data["g"];
			delete data["b"];
		}
		if ("percentage" in data) data["percentage"] /= 100;
		if ("duration" in data) {
			if (data["duration"] == 0) delete data["duration"];
		}
		if ("times" in data) {
			if (data["times"] == 0) delete data["times"];
		}
		sender(fillData(data));
	});
})


function fillShootData(index) {
	return {
		shoot: index, 
		compass: 10
	}
}


function fillData(data) {
	default_data = {
		status: status,
		mode: "blink",
		percentage: 1,
		keepBlink: 0,
		order: 0,
		random: 0
	};
	for (var key in data) {
      default_data[key] = data[key];
    }
    return default_data;
}


function fillLightData(mode, percentage, colorInd=0, random=0, keepBlink=0, color="") {
	data = {
		status: status,
		mode: mode,
		percentage: percentage,
		keepBlink: keepBlink,
		order: colorInd,
		random: random
	};
	if (color != "") data.color = color;
	return data;
}

// Max.addHandler(Max.MESSAGE_TYPES.ALL, (handled, ...args) => {
// 	if (!handled) {
// 		Max.post('No client connected.')
// 		// just consume the message
// 	}
// 	Max.post('client connected.')
// });

//console.log("setting up max handlers");

