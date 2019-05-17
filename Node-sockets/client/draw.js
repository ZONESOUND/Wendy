const MAX_STARS = 300;
let speed = 20,stars = [];
let cols, rows,current = [],previous = [],damping = 0.9;
let r = 10
let sound, amplitude;
let meteors = []
let particle_r = 2


function setup() {

    var canvas = createCanvas(windowWidth, windowHeight)
    canvas.parent('inner');
    for (var i = 0; i < MAX_STARS; i++) {
        stars[i] = new Star();
    }
    frameRate(60)
}



function draw() {
    clear();
    if(NOISE_TRIGGER) {
        createNoise(particle_r)
        $('.inside-btn').css('display','none')
        return
    }else {
        $('.inside-btn').css('display', 'block')
    }
    
    if(!START) {
        drawTitleText()
    }else {
        if (meteors.length) {
            meteorField()
        }
    }

    if (CLICK_NUMBER) {
        createMeteor(CLICK_NUMBER)
        CLICK_NUMBER = 0
    }

    if (RECEIVE_BUTTON_CLICK) {
        createMeteor(RECEIVE_BUTTON_CLICK)
        RECEIVE_BUTTON_CLICK = 0
    }

    starField()
    
}




function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
    bodyScrollLock.disableBodyScroll(window);
    stars = []
    for (var i = 0; i < MAX_STARS; i++) {
        stars[i] = new Star();
    }
}


function starField() {
    if (START) {
        translate(windowWidth / 2.5, windowHeight / 2);
    }

    for (var i = 0; i < MAX_STARS; i++) {
        stars[i].update();
        stars[i].show();
    }
}

function meteorField() {
    for (var i = 0; i < meteors.length; i++) {
        meteors[i].update();
        if(meteors[i].r > 100) {
            meteors.splice(i,1)
        }else {
            meteors[i].show();
        }
    }
}


function createMeteor(index) {
    for (var i = 0; i < Math.floor(2 * Math.random()) + 1; i++) {
        var offset_x = Math.random() * (windowWidth / 2) - (windowWidth / 4)
        var offset_y = Math.random() * (windowHeight / 2) - (windowHeight / 4)
        meteors.push(new Meteor(offset_x, offset_y, BTN_COLOR[index]))
    }
}




function drawTitleText() {
    translate(windowWidth / 2.5, windowHeight / 2);
    const scaleFactor = 0.5;
    const maxLimit = 200;
    if (frameCount < maxLimit) {
        const currentScale = map(frameCount, 0, maxLimit, 0, scaleFactor);
        scale(1.5 + currentScale);
    } else {
        scale(1.5 + scaleFactor);
    }
    stroke(255);
    strokeWeight(2);
    rectMode(CENTER);
    fill(0, 200);
    rect(0, 0, 150, 30);

    noStroke();
    fill(255);
    textFont('Arial');
    text('Press Screen to Start！', 0, 0);

    textAlign(CENTER, CENTER);
}



class Star {
    constructor() {
        this.x = random(-width, width);
        this.y = random(-width, height);
        this.z = random(width);
        this.pz = this.z;
    }

    update() {
        let z = this.z = this.z - speed;

        if (z < 1) {
            this.z = width;
            this.x = random(-width, width);
            this.y = random(-width, height);
            this.pz = this.z;
        }
    }

    show() {
        let x = this.x,
            y = this.y,
            z = this.z,
            sx = map(x / z, 0, 1, 0, width),
            sy = map(y / z, 0, 1, 0, height),
            px = map(x / this.pz, 0, 1, 0, width),
            py = map(y / this.pz, 0, 1, 0, height);

        fill(255, 255, 255);
        noStroke();

        this.pz = z;

        stroke(255)
        line(px, py, sx, sy)
    }
}


function createNoise(particle_r) {
   noStroke()
   fill(0, 20)
   rect(15, 20, width, height);
   for (h = 0; h < windowHeight; h += 5){
       for (i = 0; i < windowWidth; i += 5) {
           let c = random(0, 255);
           // let g = random(0, 255);
           // let b = random(0, 255);
           // Pixel size
           rect(i, h, particle_r, particle_r);
           fill(c);
       }
    }
}


class Meteor {
    constructor(offset_x, offset_y, color_) {
        this.x = windowWidth  / 2 + offset_x
        this.y = windowHeight / 2 + offset_y
        this.dx = (offset_x > 0) ? 1 : -1
        this.dy = (offset_y > 0) ? 1 : -1
        this.r = 3
        this.color_ = color_
    }

    update() {
        this.r += 1 + (this.r / 10)
        this.x -= (1 + (this.x / 400)) * this.dx
        this.y -= (1 + (this.y / 400)) * this.dy
    }

    show() {

        for (var i = 0; i < 100; i++) {
            var d = 1 + (i * 2);
            var alpha = 255 - (i * this.r);
            noStroke();
            //var c = color(`hsla(${this.color_}, ${alpha})`);
            //console.log(`hsla(${this.color_}, ${alpha})`);
            fill(this.color_[0], this.color_[1], this.color_[2], alpha);
            //fill(100, 255, 0, alpha);
            //c = color(`rgba(0, 0, 255, ${alpha})`);
            //fill(c);
            ellipse(this.x, this.y, d, d);
        }
        for (var i = 0; i < 65; i++) {
            var d = 1 + (i * 1.5);
            var alpha = 255 - (i * this.r);
            noStroke();
            fill(255, 255, 255, alpha);
            ellipse(this.x, this.y, d, d);
        }
    }
}
