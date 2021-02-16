//
//  DrawingViewController.swift
//  My App
//
//  Created by a.berezhniuk on 15.02.2021.
//

import UIKit

class DrawingViewController: UIViewController {
    
    
    @IBOutlet var mainView: ChartView!
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mainView.state = .chart
        case 1:
            mainView.state = .graph
        default:
            break
        }
        mainView.setNeedsDisplay()
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
//        switch segmentControl.selectedSegmentIndex {
//        case 0:
//            chartView = ChartView()
//            print("Chart")
//        case 1:
//            graphView = GraphView()
//            print("Graph")
//        default:
//            break
//        }
        
        
    }

}
