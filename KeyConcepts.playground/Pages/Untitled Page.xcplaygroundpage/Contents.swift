//: [Previous](@previous)

import Cocoa
import PlaygroundSupport

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

//Fill background
canvas.fillColor = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
canvas.drawRectangle(at: Point(x: 0, y: 0), width: canvas.width, height: canvas.height)

canvas.fillColor = Color(hue: 219, saturation: 1, brightness: 82, alpha: 100)
for i in 0...3{
    canvas.drawRectangle(at: Point(x: (i * 50), y: 0), width: 50, height: 200)
}

//: [Next](@next)
