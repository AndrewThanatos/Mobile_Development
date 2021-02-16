//
//  DrawingViewController.swift
//  My App
//
//  Created by a.berezhniuk on 15.02.2021.
//

import UIKit

class DrawingViewController: UIViewController {
    
    private var chartView: ChartView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        chartView = ChartView()
     
//        self.view.addSubview(chartView)
    }

}
