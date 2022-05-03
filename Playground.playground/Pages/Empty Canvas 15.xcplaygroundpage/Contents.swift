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
// Create a turtle that will draw upon the canvas

let diagonal = Int(sqrt(Double (scale) * Double (scale) + Double (scale) * Double (scale)))

let scale = 20 
//backwards arrow
 turtle.penUp()
 turtle.right(by: 90)
 turtle.forward(steps: 5 * scale)
 turtle.penDown()

 turtle.penUp()
 turtle.right(by: 90)
 turtle.forward(steps: 1)
 turtle.left(by: 90)
 turtle.penDown()
 
 turtle.penDown()
 turtle.forward(steps: 3 * scale )

 // draw the turtle
 //turtle.drawSelf()

 //draw upward line
 turtle.left(by: 90)
 turtle.forward(steps: 1 * scale)

 //turtle.drawSelf()

 //draw head of arrow
 turtle.right(by: 135)

 turtle.forward(steps: diagonal * 2)

 turtle.right(by: 90)
 turtle.forward(steps: diagonal * 2)

 turtle.right(by: 135)
 turtle.forward(steps: 1 * scale)

 //draw body of arrow
 turtle.left(by: 90)
 turtle.forward(steps: 3 * scale)
 turtle.right(by: 90)
 turtle.forward(steps: 2 * scale)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
