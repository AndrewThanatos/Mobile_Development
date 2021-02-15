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
        print("viewDidLoad ->  ", chartView)
     
        let width: CGFloat = 50
        let height: CGFloat = 50
     
        chartView.frame = CGRect(x: self.view.frame.size.width/2 - width/2,
                                              y: self.view.frame.size.height/2 - height/2,
                                              width: width,
                                              height: height)
     
        self.view.addSubview(chartView)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
            
        
        let width: CGFloat = 50
        let height: CGFloat = 50
     
        chartView.frame = CGRect(x: self.view.frame.size.width/2 - width/2,
                                              y: self.view.frame.size.height/2 - height/2,
                                              width: width,
                                              height: height)
        
        print("viewWillTransition ->  ", chartView)
        }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let width: CGFloat = 50
        let height: CGFloat = 50
     
        chartView.frame = CGRect(x: self.view.frame.size.width/2 - width/2,
                                              y: self.view.frame.size.height/2 - height/2,
                                              width: width,
                                              height: height)
        
        print("viewDidLayoutSubviews ->  ", chartView)

//        chartView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
    }

}
