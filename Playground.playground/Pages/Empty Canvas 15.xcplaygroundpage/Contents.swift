//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 1000
let preferredHeight = 1000
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
canvas.translate(to: Point(x: canvas.width / 40,
                           y: canvas.height / 40))

// Show a grid

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Create a turtle that will draw upon the canvas
//fast code
canvas.highPerformance = true
// blue
turtle.setPenColor(to: .blue)

//move to better location
turtle.penUp()
turtle.left(by: 90)
turtle.forward(steps: 200)
turtle.right(by: 90)
turtle.penDown()
//complete one shaded +
func drawShadedCross () {
    func drawFill () {
        
        

      
        for _ in 1...10 {
            
            turtle.forward(steps: 20)
            turtle.left(by: 90)
            turtle.forward(steps: 1)
            turtle.left(by: 90)
            turtle.forward(steps: 20)
            turtle.right(by: 90)
            turtle.forward(steps: 1)
            turtle.right(by: 90)
          
            

        }
        turtle.penUp()
        turtle.right(by: 90)
        turtle.forward(steps: 20)
        turtle.right(by: 90)
        turtle.forward(steps: 20)
        turtle.right(by: 180)
    }

    // moves to next spot
    func moveToNextSpot () {
        

        turtle.forward(steps: 40)
        turtle.penDown()
    }

    drawFill()
    moveToNextSpot()
    drawFill()
    moveToNextSpot()
    drawFill()

    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 0)
    turtle.right(by: 180)
   
    turtle.penDown()
    drawFill()


    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 40)
    turtle.left(by: 90)
    turtle.forward(steps: 20)

    turtle.penDown()

    drawFill()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 0)
    turtle.right(by: 180)
    turtle.penDown()
}



//draw 1 +
drawShadedCross()

//move to next spot
func moveToNextPosition () {
    turtle.penUp()
    turtle.forward(steps: 20)
    turtle.left(by: 90)
    turtle.forward(steps: 60)

    turtle.right(by: 90)
    turtle.penDown()
}

//move and draw 1 +
moveToNextPosition()
drawShadedCross()

// complete colom of +
for _ in 1...9{
    moveToNextPosition()
    drawShadedCross()
}
       
// move no next collom
func nextRow () {

    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 620)
    turtle.left(by: 90)
    turtle.backward(steps: 140)
    turtle.penDown()
}

//next row
nextRow()
drawShadedCross()
turtle.drawSelf()

//draw another row
for _ in 1...10{
    moveToNextPosition()
    drawShadedCross()
}


nextRow()
drawShadedCross()





//row 3
for _ in 1...10{
    moveToNextPosition()
    drawShadedCross()
}

nextRow()
drawShadedCross()

for _ in 1...8 {
        for _ in 1...10{
            moveToNextPosition()
            drawShadedCross()
        }

        nextRow()
        drawShadedCross()
}



// no more fast mode
canvas.highPerformance = false 

