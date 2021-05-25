//
//  ViewController.swift
//  mathProdigy
//
//  Created by 羅承志 on 2021/5/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1TextField: UITextField!
    @IBOutlet weak var number2TextField: UITextField!
    @IBOutlet weak var sumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countSegmented(_ sender: UISegmentedControl) {
        let number1 = Float(number1TextField.text!)
        let number2 = Float(number2TextField.text!)
        
        if sender.selectedSegmentIndex == 0 {
            sumLabel.text = "\(number1! + number2!)"
        } else if sender.selectedSegmentIndex == 1 {
            sumLabel.text = "\(number1! - number2!)"
        } else if sender.selectedSegmentIndex == 2 {
            sumLabel.text = "\(number1! * number2!)"
        } else {
            sumLabel.text = String(format: "%.1f", number1! / number2!)
        }
        view.endEditing(true)
    }
}

