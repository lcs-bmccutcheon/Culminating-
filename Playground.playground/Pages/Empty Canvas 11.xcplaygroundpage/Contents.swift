//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 480
let preferredHeight = 480
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: -20,
                           y: -20))

// Show a grid
//canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
let scale = 20

canvas.highPerformance = true

turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 30 * scale )
turtle.right(by: 90)
turtle.penDown()

turtle.setPenColor(to: .blue)
turtle.setPenSize(to: 2)
// teach the computer how to draw cross
func drawCross () {
    

    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.right(by: 90)
    turtle.forward(steps: 20)

    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.right(by: 90)
    turtle.forward(steps: 20)

    turtle.right(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 20)

    turtle.right(by: 90)
    turtle.forward(steps: 20)
    turtle.right(by: 90)
    turtle.forward(steps: 20)

    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.right(by: 90)
    turtle.forward(steps: 20)

    turtle.right(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 20)

    // get back to start

    turtle.right(by: 180)

   
}




// get into position for next cross
func moveToPosition () {
    turtle.penUp()
    turtle.forward(steps: 1 * scale)
    turtle.left(by: 90)
    turtle.forward(steps: 2 * scale)
    turtle.right(by: 90)
    turtle.penDown()
}


for _ in 1...5 {
    drawCross()
    moveToPosition()
}

turtle.penUp()
turtle.backward(steps: 4 * scale)
turtle.right(by: 90)
turtle.forward(steps: 13 * scale)
turtle.left(by: 90)
turtle.penDown()

for _ in 1...6 {
    drawCross()
    moveToPosition()
}
turtle.penUp()
turtle.backward(steps: 4 * scale)
turtle.right(by: 90)
turtle.forward(steps: 13 * scale)
turtle.left(by: 90)
turtle.penDown()

for _ in 1...6 {
    drawCross()
    moveToPosition()
}

func drawRow () {
    turtle.penUp()
    turtle.backward(steps: 4 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 13 * scale)
    turtle.left(by: 90)
    turtle.penDown()

    for _ in 1...6 {
        drawCross()
        moveToPosition()
    }
}

for _ in 1...12 {
    drawRow()
}

turtle.penUp()
turtle.backward(steps: 35 * scale)
turtle.left(by: 90)
turtle.forward(steps: 5 * scale )
turtle.right(by: 90)
turtle.penDown()

for _ in 1...15 {
    drawRow()
}

turtle.penUp()
turtle.backward(steps: 35 * scale)
turtle.left(by: 90)
turtle.forward(steps: 5 * scale )
turtle.right(by: 90)
turtle.penDown()

for _ in 1...16 {
    drawRow()
}
canvas.highPerformance = false
