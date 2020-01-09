//: [Previous](@previous)
//: # Exercise - Loops and Conditionals
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise
 
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![sloan-no-grid.png](sloan-no-grid.png "Sloan")
 ![sloan-with-grid.png](sloan-with-grid.png "Sloan")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * iteration (use of loops)
 * conditional (if statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 Or, if you wish, you may use the color constants created below.
 
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLOR CONSTANTS
let deepOrange = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
let lightBlue = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
let neonGreen = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

// Use fills, with no borders
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true

// Make a background
canvas.fillColor = Color(hue: 12, saturation: 78, brightness: 92, alpha: 100)
canvas.drawRectangle(at: CGPoint(x: 0, y: 0), width: canvas.width, height: canvas.height)

// Draw green and blue rectangles
for i in 0...3 {
    canvas.fillColor = Color(hue: 195, saturation: 63, brightness: 92, alpha: 100)
    canvas.drawRectangle(at: CGPoint(x: i * 100, y: 0), width: 50, height: 350)
    canvas.fillColor = Color(hue: 107, saturation: 61, brightness: 93, alpha: 100)
    canvas.drawRectangle(at: CGPoint(x: i * 100 + 50, y: 50), width: 50, height: 350)
}

// Change text colour
canvas.textColor = Color.white

// Add Big label
canvas.drawText(message: "sloan", at: CGPoint(x: 150, y: 400), size: 95, kerning: 0.0)

// Variables usefull for adding words to proper collunm and row
let topRow = 560
let secondRow = 545
let thirdRow = 530
let firstCollunm = 20
let secondCollunm = 150
let thirdCollunm = 275

// Write all small words at top
canvas.drawText(message: "saturday", at: CGPoint(x: firstCollunm, y: topRow), size: 10, kerning: 0.0)
canvas.drawText(message: "with", at: CGPoint(x: secondCollunm, y: topRow), size: 10, kerning: 0.0)
canvas.drawText(message: "camaro's cafe", at: CGPoint(x: thirdCollunm, y: topRow), size: 10, kerning: 0.0)
canvas.drawText(message: "december 19 1992", at: CGPoint(x: firstCollunm, y: secondRow), size: 10, kerning: 0.0)
canvas.drawText(message: "thrust hermit", at: CGPoint(x: secondCollunm, y: secondRow), size: 10, kerning: 0.0)
canvas.drawText(message: "halifax", at: CGPoint(x: thirdCollunm, y: secondRow), size: 10, kerning: 0.0)
canvas.drawText(message: "9 pm", at: CGPoint(x: firstCollunm, y: thirdRow), size: 10, kerning: 0.0)
canvas.drawText(message: "the quanhogs", at: CGPoint(x: secondCollunm, y: thirdRow), size: 10, kerning: 0.0)
canvas.drawText(message: "nova scotia", at: CGPoint(x: thirdCollunm, y: thirdRow), size: 10, kerning: 0.0)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

