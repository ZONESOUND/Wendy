var SHOOT_CD = 30*1000;
var SMOOTH_COUNT= 0;
var GLOW_INTERVAL;
var BTN_COLOR = [];
var BTN_COLOR2 = [];
let idN = 0;
var BTN_ID_LIST = [];
var BTN_ID_IND = 0;
var ENABLE_SHOOT = false;

$(document).ready(function() {

	$(".inside-btn").click(function(e) {
		if (!START) {
			return;
		}
		var bid = $(this).attr("id");
		disableBtn("#"+bid);

		var number = parseInt(bid.split("-")[1]);
		CLICK_NUMBER = number;

		//shake(number);
		send({shoot: number, compass: COMPASS_DIR});

		//test(bid, SHOOT_CD);
		setTimeout(function(id) {	
			enableBtn("#"+id);
			
        }, SHOOT_CD, bid);

	});
	initBtnPara();
	initBtnColor(0);
	enableBtn(".inside-btn");
	//GLOW_INTERVAL = setInterval(glowShadow, 10);

	//$(".inside-btn").css("backgound-image", "linear-gradient(to right top, #5d5f60, #a0aaaf)")
	//$(".glow").css('background-image', "linear-gradient(to right top, #f7204b, #f43f27)");
	//background-image: linear-gradient(to right top, #f7204b, #f72843, #f7303a, #f63831, #f43f27);
	
})

function initBtnPara() {
	for (var i=0; i<16; i++){
		BTN_ID_LIST.push(i);
	}
	BTN_ID_LIST = BTN_ID_LIST.sort(randomsort);
}

function initBtnColor(oriH) {
	//BTN_COLOR = [];
	//BTN_COLOR_2 = [];
	var sList = [60, 90];
	var lList = [40, 90];
	BTN_COLOR = genColor(oriH, 2, 2, 4, 3, sList, lList, [0, 0, 0]);
	BTN_COLOR_2 = genColor(oriH, 2, 2, 4, 3, sList, lList, [0, 0, 3]);

	// for (var i=-1; i<=1; i+=2) {
	// 	var h = (oriH + i*3 + 360)%360;
	
	// 	for (var j=0; j<2; j++) {
	// 		var s = sList[j]
	// 		for (var k=0; k<4; k++) {
	// 			var l = lList[0]+k*(lList[1]-lList[0])/3;
	// 			var rgbList = hsl2rgb(h, s, l);
	// 			BTN_COLOR.push(rgbList);
	// 			BTN_COLOR_2.push(hsl2rgb(h, s, l+3));
	// 		}
	// 	}
	// }
}


function toRGBString(rgbList) {
	return `rgb(${rgbList[0]}, ${rgbList[1]}, ${rgbList[2]})`;
}

function toRGBSAtring(rgbList, alpha) {
	return `rgba(${rgbList[0]}, ${rgbList[1]}, ${rgbList[2]},${alpha})`;
}

function randomsort(a, b) {
    return Math.random() > .5 ? -1 : 1;
}



function glowShadow(target) {
	if (SMOOTH_COUNT >= 100) {
		$(target).css('box-shadow', "0 0 0px #000, 0 0 20px #F43F27, 0 0 300px #F27160");
		clearInterval(GLOW_INTERVAL);
		
	}
	SMOOTH_COUNT += 1;
	$(target).css('box-shadow', "0 0 0px #000, 0 0 "+(SMOOTH_COUNT*20/100).toString()+"px #F43F27");

}

function checkNoiseStatus(data) {
	if(data.status == 'Noise') {
		NOISE_TRIGGER = true
	} else {
		NOISE_TRIGGER = false
	}
}

function checkShootStatus(data) {
	console.log("status:"+data);
	console.log(data);
	if (data.status == "Shoot") {
		if (!ENABLE_SHOOT) enableBtn(".inside-btn");
		ENABLE_SHOOT = true;
		if (data.btn_color != undefined) {
			console.log("~~~~");
			initBtnColor(data.btn_color);
			enableBtn(".inside-btn");
		}
		if (data.cd != undefined) {
			SHOOT_CD = data.cd;
		}
	} else if (data.status != undefined){

		ENABLE_SHOOT = false;
		disableBtn(".inside-btn");
	}
}



function enableBtn(target) {
	// $('.inside-btn').addClass("blink-btn")
	$(target).each(function () {
		idN = BTN_ID_LIST[BTN_ID_IND];
		$(this).attr("id", "button-" + idN.toString());
		BTN_ID_IND++;
		if (BTN_ID_IND >= BTN_ID_LIST.length) {
			BTN_ID_IND = 0;
			BTN_ID_LIST = BTN_ID_LIST.sort(randomsort);
		}
		$(this).css('background', `radial-gradient(${toRGBSAtring(BTN_COLOR_2[idN],1)} 0%, ${toRGBSAtring(BTN_COLOR_2[idN],0.7)} 20%,${toRGBSAtring(BTN_COLOR_2[idN],0.3)} 60%, ${toRGBSAtring(BTN_COLOR_2[idN],0.3)} 85%, ${toRGBSAtring(BTN_COLOR_2[idN],0.8)} 100%)`);
		$(this).css('box-shadow', "0 0 0px #000, 0 0 150px " + toRGBSAtring(BTN_COLOR_2[idN], 0.5));
		$(this).prop('disabled', false);
		idN = BTN_ID_LIST[BTN_ID_IND];
	})
	SMOOTH_COUNT = 0;

}

function disableBtn(target) {
	// $('.inside-btn').removeClass("blink-btn");
	// $(target).removeClass("blink-btn");
	$(target).css('background', `radial-gradient(${toRGBSAtring(BTN_COLOR_2[idN],0)} 60%, ${toRGBSAtring(BTN_COLOR_2[idN],0.8)} 100%)`);
	$(target).css('box-shadow', "0 0 0px #000");
	// $(target).css("background", "transparent");
	$(target).prop('disabled', true);
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
		translateX: [-10, 0],
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
