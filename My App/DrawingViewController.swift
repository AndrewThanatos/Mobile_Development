//
//  DrawingViewController.swift
//  My App
//
//  Created by a.berezhniuk on 15.02.2021.
//

import UIKit

class DrawingViewController: UIViewController {
    
    private var chartView: ChartView!
    

    @IBOutlet var drawView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chartView = ChartView()
     
        drawView.addSubview(chartView)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {

        setupSizes()

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        setupSizes()

    }

    func setupSizes() {
        chartView.frame = CGRect(x: 0, y: 0, width: drawView.frame.width, height: drawView.frame.height)
    }

}
