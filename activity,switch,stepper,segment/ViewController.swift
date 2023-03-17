//
//  ViewController.swift
//  activity,switch,stepper,segment
//
//  Created by Jenish Navadiya on 25/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segment1: UISegmentedControl!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var lb: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        switch1.isOn = false
        lb.text = Int(stepper1.value).description
        view.backgroundColor = .gray
        activity.hidesWhenStopped = true
   
    }

    @IBAction func switchAction(_ sender: Any) {
        if switch1.isOn == true{
            view.backgroundColor = .gray
            activity.startAnimating()
        }
        else{
            view.backgroundColor = .white
            activity.stopAnimating()
        }
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        lb.text = Int(stepper1.value).description
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        if segment1.selectedSegmentIndex == 0{
            view.backgroundColor = .gray
        }
        else if segment1.selectedSegmentIndex == 1{
            view.backgroundColor = .white
        }
        else if segment1.selectedSegmentIndex == 2{
            view.backgroundColor = .yellow
        }
        else if segment1.selectedSegmentIndex == 3{
            view.backgroundColor = .red
        }
    }
}


