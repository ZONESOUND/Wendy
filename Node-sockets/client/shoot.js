var shootCD = 4000;


$(document).ready(function() {

	$("button").click(function(e) {
		//alert($(this).find(".subclass"));
		//display(0, ".outer_button");
		$(this).removeClass("glow");
		$(this).prop('disabled',true);
		var bid = $(this).attr("id")
		var number = parseInt(bid.split("-")[1]);
		send({shoot: number, compass: compassdir});
		setTimeout(function(id) {
			$("#"+id).addClass("glow");
        	$("#"+id).prop('disabled',false);
        }, shootCD, bid);
	});
})



// let handleOrientation = () => {
// 	if (event.webkitCompassHeading) {
// 		compassdir = event.webkitCompassHeading;
// 	} else {
// 		compassdir = event.alpha;
// 	}
// }

// if (window.DeviceOrientationEvent) {
// 	alert('h')
// 	window.addEventListener("deviceorientation", handleOrientation, true);
// } else {
// 	console.log("device does not support DeviceOrientation");
// }


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