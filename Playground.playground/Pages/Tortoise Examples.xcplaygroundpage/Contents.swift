//: [Previous](@previous) / [Next](@next)
//: # Tortoise Examples
//:
//: The `CanvasGraphics` framework also allows you to draw using a "LOGO turtle" metaphor.
//:
//: [Documentation for the Tortoise abstraction](http://russellgordon.ca/CanvasGraphics/Documentation/Classes/Tortoise.html) is available.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 800
let preferredHeight = 800
/*:
 ## Required code
 
 Lines 21 to 29 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Translate origin a bit
canvas.translate(to: Point(x: 150, y: 150))

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Tortoise class
 
 To use the Tortoise abstraction, just create an instance of the Tortoise class, and provide it with a canvas object that is should draw upon.
 */


// Create a turtle that will draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)


// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)


// function
func DrawArrow () {
    //fix position
   
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
    
   
    
}



// where is the turtle
turtle.currentPosition()
turtle.currentHeading()

// set the scale
let scale = 20

let diagonal = Int(sqrt(Double (scale) * Double (scale) + Double (scale) * Double (scale)))

turtle.setHeading(to: -270)
turtle.setPosition(to: Point(x: 0, y: 50))
turtle.currentPosition()

for _ in  1...5 {
    for _ in 1...5 {
        DrawArrow()
        turtle.currentPosition()
    }

    // get arrow to next row
    turtle.currentHeading()
    turtle.drawSelf()
    turtle.penUp()
    turtle.left(by: 90)
    turtle.forward(steps: 25 * scale)
    turtle.right(by: 90)
    turtle.forward(steps: 4 * scale)
    turtle.penDown()
    turtle.currentHeading()
}




//turtle.penUp()
//turtle.right(by: 90)
//turtle.forward(steps: 1)
//turtle.left(by: 90)
//turtle.penDown()
//
//turtle.penDown()
//turtle.forward(steps: 3 * scale )
//
//// draw the turtle
////turtle.drawSelf()
//
////draw upward line
//turtle.left(by: 90)
//turtle.forward(steps: 1 * scale)
//
////turtle.drawSelf()
//
////draw head of arrow
//turtle.right(by: 135)
//
//turtle.forward(steps: diagonal * 2)
//
//turtle.right(by: 90)
//turtle.forward(steps: diagonal * 2)
//
//turtle.right(by: 135)
//turtle.forward(steps: 1 * scale)
//
////draw body of arrow
//turtle.left(by: 90)
//turtle.forward(steps: 3 * scale)
//turtle.right(by: 90)
//turtle.forward(steps: 2 * scale)




























/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")
 
 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
