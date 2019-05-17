//genColor(0, 5, 1, 1, 50, [100, 100], [73, 73], [0, 0, 0])
function genColor(oriH, hSplit, sSplit, lSplit, hNum, sList, lList, offset) {
    console.log(oriH, hSplit, sSplit, lSplit, hNum, sList, lList, offset);
	var start;
	if (hSplit%2 == 0) {
		start = hSplit*-1 + 1;
	} else {
		start = -1*(hSplit-1);
	}

	var colorArr = []
	for (var i=start; i<=-start; i+=2) {
		var h = (oriH + i*hNum + 360)%360;
		for (var j=0; j<sSplit; j++) {
            var s;
            if (sSplit == 1) s = sList[0];
			else s = sList[0]+j*(sList[1]-sList[0])/(sSplit-1);
            //console.log("i:"+i);
			for (var k=0; k<lSplit; k++) {
                var l;
                if (lSplit == 1) l = lList[0];
				else l = lList[0]+k*(lList[1]-lList[0])/(lSplit-1);
                console.log(h+offset[0], s+offset[1], l+offset[2]);
				var rgbList = hsl2rgb(h+offset[0], s+offset[1], l+offset[2]);
				colorArr.push(rgbList);
                console.log(rgbList);
			}
		}
	}
	return colorArr;
}

function hsl2rgb (h, s, l) {

    var r, g, b, m, c, x

    if (!isFinite(h)) h = 0
    if (!isFinite(s)) s = 0
    if (!isFinite(l)) l = 0

    h /= 60
    if (h < 0) h = 6 - (-h % 6)
    h %= 6

    s = Math.max(0, Math.min(1, s / 100))
    l = Math.max(0, Math.min(1, l / 100))

    c = (1 - Math.abs((2 * l) - 1)) * s
    x = c * (1 - Math.abs((h % 2) - 1))

    if (h < 1) {
        r = c
        g = x
        b = 0
    } else if (h < 2) {
        r = x
        g = c
        b = 0
    } else if (h < 3) {
        r = 0
        g = c
        b = x
    } else if (h < 4) {
        r = 0
        g = x
        b = c
    } else if (h < 5) {
        r = x
        g = 0
        b = c
    } else {
        r = c
        g = 0
        b = x
    }

    m = l - c / 2
    r = Math.round((r + m) * 255)
    g = Math.round((g + m) * 255)
    b = Math.round((b + m) * 255)

    return [r, g, b]

}

function toRGBString(rgbList) {
    return `rgb(${rgbList[0]}, ${rgbList[1]}, ${rgbList[2]})`;
}

function toColorString(rgbList) {
    return `${rgbList[0]}, ${rgbList[1]}, ${rgbList[2]}`;
}