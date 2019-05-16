inlets = 3;
outlets = 2;

var useColor = 0;
var dict;
var avoid;

function msg_int(v) {
	if (inlet == 1) useColor = v;
}

function anything()
{
	avoid = arrayfromargs(messagename, arguments);
}
	
function dictionary() {
	
    dict = new Dict(arguments[0]); 
	post("useColor: "+useColor+"\n")
    var k = dict.getkeys(); 
	var color = dict.get("color");
	if (color != null && color != "*") {
		
		if (useColor == 1) { 
		
			dict.set("r", color.get("r"));
			dict.set("g", color.get("g"));
			dict.set("b", color.get("b"));
		} else {
			dict.set("r", "*");
			dict.set("g", "*");
			dict.set("b", "*");
		}
		dict.set("color", "*");
	}
	for (var i in avoid) {
		var avoidK = avoid[i];
		dict.set(avoidK, "*");
	}
	outlet(0, "bang");
	
}