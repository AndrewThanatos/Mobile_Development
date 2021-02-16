//
//  ChartView.swift
//  My App
//
//  Created by a.berezhniuk on 15.02.2021.
//

import UIKit

class ChartView: UIView {
    
    enum State {
        case chart
        case graph
    }
    
    var state: State = .chart
    
    let unit = 10.0

    var width: Double {
        return Double(frame.width)
    }
    
    var height: Double {
        return Double(frame.height)
    }
    
    
    var unitX: Double {
        return Double(frame.width * 0.02)
    }
    
    var unitY: Double {
        return Double(frame.height * 0.05)
    }
         
    override init(frame: CGRect) {
        super.init(frame: frame)
     
        self.backgroundColor = UIColor.white
    }
     
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func draw(_ rect: CGRect) {
        switch state {
        case .chart:
            drawAxis()
            drawChart()
        case .graph:
            print("graph")
            break
        }
    }
    
    func drawChart() {
        let chartPath = UIBezierPath()
        
        chartPath.lineWidth = 1
        UIColor.red.setStroke()
        
        chartPath.move(to: CGPoint(x: xScaling(point: -2 * Double.pi),
                              y: yScaling(point: 0)))
        for x in stride(from: -2 * Double.pi, to: 2 * Double.pi, by: 0.05){
            chartPath.addLine(to: CGPoint(x: xScaling(point: x), y: yScaling(point: sin(x))))
        }
        
        chartPath.stroke()
    }
    
    func xScaling(point: Double) -> Double {
        return point * (width - 2 * unit) / (Double.pi * 4) + width / 2
    }
    
    func yScaling(point: Double) -> Double {
        return point * (height - 2 * unit) / (Double.pi * 4) + height / 2
    }
    
    func drawAxis(){
        let path = UIBezierPath()
        
        path.lineWidth = 1
        UIColor.black.setStroke()
        
        path.move(to: CGPoint(x: width / 2, y: unit))
        path.addLine(to: CGPoint(x: width / 2, y: height - unit))
        
        path.move(to: CGPoint(x: unit, y: height / 2))
        path.addLine(to: CGPoint(x: width - unit, y: height / 2))
        
        path.move(to: CGPoint(x: width - unit, y: height / 2))
        path.addLine(to: CGPoint(x: width - 2 * unit, y: height / 2 - 0.5 * unit))
        path.move(to: CGPoint(x: width - unit, y: height / 2))
        path.addLine(to: CGPoint(x: width - 2 * unit, y: height / 2 + 0.5 * unit))
        
        path.move(to: CGPoint(x: width / 2, y: unit))
        path.addLine(to: CGPoint(x: width / 2 + 0.5 * unit, y: 2 * unit))
        path.move(to: CGPoint(x: width / 2, y: unit))
        path.addLine(to: CGPoint(x: width / 2 - 0.5 * unit, y: 2 * unit))
        
        path.move(to: CGPoint(x: width / 2 - 5, y: -1 * (height - 2 * unit) / (Double.pi * 4) + height / 2))
        path.addLine(to: CGPoint(x: width / 2 + 5, y: -1 * (height - 2 * unit) / (Double.pi * 4) + height / 2))

        path.move(to: CGPoint(x: (width - 2 * unit) / (Double.pi * 4) + width / 2, y: height / 2 - 5))
        path.addLine(to: CGPoint(x: (width - 2 * unit) / (Double.pi * 4) + width / 2, y: height / 2 + 5))
        
        path.stroke()
        
    }

}
