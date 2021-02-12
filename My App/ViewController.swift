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
