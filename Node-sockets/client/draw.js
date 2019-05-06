const MAX_STARS = 400;
let speed = 20,stars = [];
let cols, rows,current = [],previous = [],damping = 0.9;



function setup() {
    var canvas = createCanvas(windowWidth, windowHeight)
    canvas.parent('inner');
    for (var i = 0; i < MAX_STARS; i++) {
        stars[i] = new Star();
    }
    rippleSetup()

}

function draw() {

    clear();
    if(mode == 'stop') {
        drawRipple()
    } else {
        rippleSetup()
    }
    
    if(!start) {
        drawTitleText()
    }

    starField()

    if (touches.length) {
        if (mode == 'stop') {
            for (var i = 0; i < touches.length; i++) {
                current[touches[i].x][touches[i].y] = 255
            }
        }
        send(touches.length / 1)
    }
    
}

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
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


function rippleSetup() {
    pixelDensity(1)
    cols = width
    rows = height
    for (let i = 0; i < cols; i++) {
      current[i] = []
      previous[i] = []
      for (let j = 0; j < rows; j++) {
        current[i][j] = 0
        previous[i][j] = 0
      }
    }
    previous[100][100] = 0
}

function drawRipple() {
    loadPixels()
    for (let i = 1; i < cols - 1; i++) {
      for (let j = 1; j < rows - 1; j++) {
        current[i][j] =
          (previous[i - 1][j] + previous[i + 1][j] +
            previous[i][j - 1] + previous[i][j + 1] +
            previous[i - 1][j - 1] + previous[i - 1][j + 1] +
            previous[i + 1][j - 1] + previous[i + 1][j + 1]
          ) / 4 - current[i][j];
        current[i][j] = current[i][j] * damping
        let index = (i + j * cols) * 4;
        pixels[index + 0] = current[i][j] * 255
        pixels[index + 1] = current[i][j] * 255
        pixels[index + 2] = current[i][j] * 255
        pixels[index + 3] = 255
      }
    }
    updatePixels()
    
    //swap buffers
    let temp = previous
    previous = current
    current = temp
}

function mouseDragged() {
    send(1)
    current[mouseX][mouseY] = 255
}