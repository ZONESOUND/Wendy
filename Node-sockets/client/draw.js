const MAX_STARS = 600;
let speed = 40,stars = [];


function setup() {
    var canvas = createCanvas(windowWidth, windowHeight)
    canvas.parent('inner');
    for (var i = 0; i < MAX_STARS; i++) {
        stars[i] = new Star();
    }
}

function draw() {
    var color = select('#inner').style('background-color')
    background(color)
    if(!start) {
        drawTitleText()
    }
    starField()

}


function starField() {
    if(start) {
        translate(windowWidth / 2, windowHeight / 2);
    }
    
    for (var i = 0; i < MAX_STARS; i++) {
        stars[i].update();
        stars[i].show();
    }
}

function drawTitleText() {

    translate(windowWidth/2, windowHeight/2);

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
            r = map(z, 0, width, 16, 0),
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