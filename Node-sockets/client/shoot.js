var SHOOT_CD = 4000;
var SMOOTH_COUNT= 0;
var GLOW_INTERVAL;
var shoot_sound = [];



$(document).ready(function() {

	$("button").click(function(e) {
		//test_sound();
		//alert($(this).find(".subclass"));
		//display(0, ".outer_button");
		//$(this).removeClass("glow");
		$(this).css('box-shadow', "0 0 0px #000");
		//$(this).css("background-image", "linear-gradient(to right top, #a0aaaf, #f2f2f2)")
		$(this).css("background-image", "gray")
		$(this).prop('disabled',true);
		var bid = $(this).attr("id");
		
		var number = parseInt(bid.split("-")[1]);
		shake(number);
		send({shoot: number, compass: COMPASS_DIR});

		test(bid, SHOOT_CD);
		setTimeout(function(id) {
			SMOOTH_COUNT = 0;
			GLOW_INTERVAL = setInterval(glowShadow, 5, id);
			console.log("#"+id);
			$("#"+id).css('background-image', "linear-gradient(to right top, #f7204b, #f43f27)");
			//$("#"+id).addClass("glow");
        	$("#"+id).prop('disabled',false);
        }, SHOOT_CD, bid);
	});

	//GLOW_INTERVAL = setInterval(glowShadow, 10);

	//$(".inside-btn").css("backgound-image", "linear-gradient(to right top, #5d5f60, #a0aaaf)")
	//$(".glow").css('background-image', "linear-gradient(to right top, #f7204b, #f43f27)");
	//background-image: linear-gradient(to right top, #f7204b, #f72843, #f7303a, #f63831, #f43f27);

	
})

function test_sound() {
	sound.play();
	changeColorWithSound();
}

function glowShadow(id) {
	if (SMOOTH_COUNT >= 100) {
		$("#"+id).css('box-shadow', "0 0 0px #000, 0 0 20px #F43F27, 0 0 300px #F27160");
		clearInterval(GLOW_INTERVAL);
		
	}
	SMOOTH_COUNT += 1;
	//console.log(SMOOTH_COUNT);
	$("#"+id).css('box-shadow', "0 0 0px #000, 0 0 "+(SMOOTH_COUNT*20/100).toString()+"px #F43F27");

}


function checkShootStatus(data) {
	if (data.status == "Shoot") {
		$(".inside-btn").addClass("glow");
		$(".inside-btn").prop('disabled',true);
	} else {
		$(".inside-btn").removeClass("glow");
		$(".inside-btn").prop('disabled',false);
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

function test(id, duration) {
	anime({
		targets: "#"+id, 
		background: "#f7204b",
		duration: duration,
		easing: 'easeInQuad',
	})

}

function shake(id) {
	
	anime({
		targets: ".outer_panel",
		direction: "alternate",
		translateX: [-20, 0],
		//opacity: 0,
		duration: 50,
		loop: 7
	})

	// var tl = anime.timeline({
	//   //easing: 'easeOutQuad',
	//   //duration: 750
	//   	direction: 'alternate',
 //  		loop: 7
	// });


	// tl
	anime({
        targets: '#inner',  
        duration: 100,
        background: "rgba(255,255,255,1)",
        delay: 350,
        easing: 'easeInOutExpo',
        loop: false
    })

    anime({
        targets: '#inner',  
        duration: 500,
        background: "rgba(255,255,255,0)",
        delay: 450,
        easing: 'easeInOutExpo',
        loop:1
    })
    //shoot_sound[(id-1)+4].start();
    // setTimeout(function() {
		
    // }, 150)

}

/*

getComputedStyle(document.documentElement)
    .getPropertyValue('--my-variable-name'); // #999999

document.documentElement.style
    .setProperty('--my-variable-name', 'pink');

*/