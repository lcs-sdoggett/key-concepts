//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc-no-grid.png](tjamc-no-grid.png "The Jesus and Mary Chain")
 ![tjamc-with-grid.png](tjamc-with-grid.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let grey = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
let lightBlue = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
let lightRed = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// No border, Yes Fill
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 50

//Fill background
canvas.fillColor = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

// Set variables to draw cirlces
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 100


// Draw red Circle
canvas.borderColor = Color(hue: 4, saturation: 78, brightness: 92, alpha: 100)
canvas.drawEllipse(at: Point(x: 200, y: 200), width: 275, height: 275)


// Draw Blue circle
canvas.borderColor = Color(hue: 205, saturation: 74, brightness: 77, alpha: 75)
canvas.drawEllipse(at: Point(x: 350, y: 200), width: 275, height: 275)


canvas.drawText(message: "the jesus", at: Point(x: 15, y: 450), size: 40, kerning: 0.0)
canvas.drawText(message: "and mary chain", at: Point(x: 15, y: 405), size: 40, kerning: 0.0)



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

