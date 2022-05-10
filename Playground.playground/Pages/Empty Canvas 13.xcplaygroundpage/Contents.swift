//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
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
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */


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

drawCross()

turtle.setPenColor(to: .blue)

//fill square
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

    func moveToNextSpot () {
        

        turtle.forward(steps: 40)
        turtle.drawSelf()
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
    turtle.drawSelf()
    turtle.penDown()
    drawFill()


    turtle.penUp()
    turtle.right(by: 90)
    turtle.forward(steps: 40)
    turtle.left(by: 90)
    turtle.forward(steps: 20)
    turtle.penDown()

    drawFill()

}


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

func moveToNextSpot () {
    

    turtle.forward(steps: 40)
    turtle.drawSelf()
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
turtle.drawSelf()
turtle.penDown()
drawFill()


turtle.penUp()
turtle.right(by: 90)
turtle.forward(steps: 40)
turtle.left(by: 90)
turtle.forward(steps: 20)
turtle.penDown()

drawFill()
