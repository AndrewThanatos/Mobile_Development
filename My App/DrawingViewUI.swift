//
//  DrawingViewUI.swift
//  My App
//
//  Created by a.berezhniuk on 13.02.2021.
//

import UIKit

class DrawingViewUI: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.white
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = UIColor.white
    }
    
    private func setup() {
        backgroundColor = .clear
    }

    var path: UIBezierPath!

    func createRectangle() {
        // Initialize the path.
        path = UIBezierPath()
     
        // Specify the point that the path should start get drawn.
        path.move(to: CGPoint(x: 0.0, y: 0.0))
     
        // Create a line between the starting point and the bottom-left side of the view.
        path.addLine(to: CGPoint(x: 0.0, y: self.frame.size.height / 2))
     
        // Create the bottom line (bottom-left to bottom-right).
        path.addLine(to: CGPoint(x: self.frame.size.width / 2, y: self.frame.size.height / 2))
     
        // Create the vertical line from the bottom-right to the top-right side.
        path.addLine(to: CGPoint(x: self.frame.size.width / 2, y: 0.0))
     
        // Close the path. This will create the last line automatically.
        path.close()
    }
    
    override func draw(_ rect: CGRect) {
        self.createRectangle()
     
        // Specify the fill color and apply it to the path.
        UIColor.orange.setFill()
        path.fill()
     
        // Specify a border (stroke) color.
        UIColor.purple.setStroke()
        path.stroke()
    }
    

}
