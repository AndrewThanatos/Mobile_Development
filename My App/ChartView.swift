//
//  ChartView.swift
//  My App
//
//  Created by a.berezhniuk on 15.02.2021.
//

import UIKit

class ChartView: UIView {

    var width: Double {
        return Double(frame.width)
    }
    
    var height: Double {
        return Double(frame.height)
    }
         
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.white
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func draw(_ rect: CGRect) {
        drawAxis()
        drawChart()
    }
    
    func drawChart() {
        let path = UIBezierPath()
        
        path.lineWidth = 1
        UIColor.red.setStroke()
        
        path.move(to: CGPoint(x: xScaling(point: -2 * Double.pi + height / 2),
                              y: yScaling(point: width / 2)))
        for x in stride(from: -2 * Double.pi, to: 2 * Double.pi, by: 0.1){
            path.addLine(to: CGPoint(x: xScaling(point: x), y: yScaling(point: sin(x))))
        }
        
        path.stroke()
    }
    
    func xScaling(point: Double) -> Double {
        return point + width / 2
    }
    
    func yScaling(point: Double) -> Double {
        return point + height / 2
    }
    
    func drawAxis(){
        let path = UIBezierPath()
        
        path.lineWidth = 0.5
        UIColor.black.setStroke()
        
        path.move(to: CGPoint(x: width / 2, y: 0))
        path.addLine(to: CGPoint(x: width / 2, y: height))
        
        path.move(to: CGPoint(x: 0, y: height / 2))
        path.addLine(to: CGPoint(x: width, y: height / 2))
        
        path.stroke()
        
    }

}
