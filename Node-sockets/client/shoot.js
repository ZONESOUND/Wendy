var shootCD = 4000;


$(document).ready(function() {

	$("button").click(function(e) {
		shake();
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
// 	window.addEventListener("deviceorientation", handleOrientation, true);
// } else {
// 	console.log("device does not support DeviceOrientation");
// }

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

function shake() {
	

	var tl = anime.timeline({
	  easing: 'easeOutQuad',
	  duration: 750
	});

	// Add children
	var offset = 250;
	// .add({
	//   targets: ".outer_panel",
	// 	direction: "alternate",
	// 	translateX: [-15, 0],
	// 	//opacity: 0,
	// 	duration: 50,
	// 	loop: 7
	// })
	tl.add({
        targets: '#inner',  
        duration: 50,
        background: "rgba(255,255,255,1)",
        delay: 0,
        easing: 'easeInOutExpo',
        loop:1
    }, 250-offset)
    .add({
        targets: '#inner',  
        duration: 50,
        background: "rgba(255,255,255,0)",
        delay: 0,
        easing: 'easeInOutExpo',
        loop:1
    }, 300-offset)
    .add({
	  targets: ".bullet",
		opacity: 1,
		scale: 1,
		translateX: 500,
		translateY: -500,
		duration: 50
		//loop: 5
	}, 300-offset)
	.add({
	  targets: ".bullet",
		scale: 0.2,
		//opacity: 0,
		duration: 2000
		//loop: 5
	}, 350-offset)
	// .add({
	//   targets: ".bullet",
	// 	//scale: 0.1,
	// 	opacity: 0,
	// 	duration: 200
	// 	//loop: 5
	// }, 4050-offset)
}

/*

getComputedStyle(document.documentElement)
    .getPropertyValue('--my-variable-name'); // #999999

document.documentElement.style
    .setProperty('--my-variable-name', 'pink');

*/