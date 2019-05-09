var shootCD = 4000;
var compassdir = 0;

if (window.DeviceOrientationEvent) {
	window.addEventListener("deviceorientation", handleOrientation, true);
} else {
	console.log("device does not support DeviceOrientation");
}

$(document).ready(function() {

	$("button").click(function(e) {
		//alert($(this).find(".subclass"));
		//display(0, ".outer_button");
		$(this).removeClass("glow");
		$(this).prop('disabled',true);
		var bid = $(this).attr("id")
		var number = parseInt(bid.split("-")[1]);
		console.log("compass : "+ getCompass());
		send({shoot: number, compass: compassdir});
		setTimeout(function(id) {
			$("#"+id).addClass("glow");
        	$("#"+id).prop('disabled',false);
        }, shootCD, bid);
	});
});

let handleOrientation = () => {
  if(event.webkitCompassHeading) {
      compassdir = event.webkitCompassHeading; 
    }
    else {
      compassdir = event.alpha;
    }
}

function getCompass() {
	var compassdir = 0;
	if (window.DeviceOrientationEvent) {
		window.addEventListener('deviceorientation', function(eventData) {
		    if(event.webkitCompassHeading) {
		      // Apple works only with this, alpha doesn't work
		      compassdir = event.webkitCompassHeading;  
		    }
		    else compassdir = event.alpha;
		});
	}
	return compassdir;
}
/*

getComputedStyle(document.documentElement)
    .getPropertyValue('--my-variable-name'); // #999999

document.documentElement.style
    .setProperty('--my-variable-name', 'pink');

*/

function checkShootStatus(data) {
	if (data.status == "Shoot") {
		$("button").addClass("glow");
		
	}
}

function display(opacity, obj) {
	anime({
        targets: obj,
        opacity: opacity,
        //visibility: 'visible',
        easing: 'easeOutQuad',
        duration: 1000,
        loop: false
    });
}