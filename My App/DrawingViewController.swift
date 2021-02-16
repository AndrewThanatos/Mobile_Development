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

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        
        setupSizes()
            
    }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        setupSizes()
        
    }
    
    func setupSizes() {
        print(self.view.safeAreaInsets)
        let width: CGFloat = self.view.frame.width
        let height: CGFloat = self.view.frame.height
        let unit = min(width, height) * 0.8
     

        chartView.frame = CGRect(x: width / 2 - unit / 2,
                                 y: height / 2 - unit / 2,
                                 width: unit,
                                 height: unit)
    }

}
