var shootCD = 4000;
var click_number = 0;
$(document).ready(function() {

	$(".inside-btn").click(function(e) {
		//alert($(this).find(".subclass"));
		//display(0, ".outer_button");
		button_click = true;
		$(this).removeClass("glow");
		$(this).prop('disabled',true);
		var bid = $(this).attr("id")
		number = parseInt(bid.split("-")[1]);
		click_number = number
		send({shoot: number, compass: compassdir});
		setTimeout(function(id) {
			$("#"+id).addClass("glow");
        	$("#"+id).prop('disabled',false);
		}, shootCD, bid);

	});

	

})


function checkShootStatus(data) {
	if (data.status == "Shoot") {
		$(".inside-btn").addClass("glow");
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