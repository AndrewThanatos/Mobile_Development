//
//  ViewController.swift
//  My App
//
//  Created by a.berezhniuk on 10.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

class DrawingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        var width: CGFloat { return self.view.frame.size.width / 2 }
        var height: CGFloat { return self.view.frame.size.height / 2 }
        
        var frame_x_size: CGFloat {self.view.frame.size.width/2 - width/2}
        var frame_y_size: CGFloat {self.view.frame.size.height/2 - height/2}
     
        let demoView = DrawingViewUI(frame: CGRect(x: frame_x_size, y: frame_y_size, width: width, height: height))
     
        self.view.addSubview(demoView)
    }
    
    private func viewsSizesSetup() {
        
    }
    
    
    
    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            print("1")
        case 1:
            print("2")
        default:
            break
        }
    }
}
