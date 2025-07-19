//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Student on 14/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!

    @IBOutlet weak var calculateBMI: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    
    @IBAction func wifiToggle(_ sender: UISwitch) {
        if sender.isOn{
            print("Wifi is on")
        }else{
            print("wifi is off")
        }
    }
    
    @IBAction func keyreturnpress(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func progressTracker(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weightTextField.text ?? "0"
        let weight = Double(weightString) ?? 0
        
        let heightString = heightTextField.text ?? "0"
        let height = Double(heightString) ?? 0
        
        let bmi = weight / (height * height)
        
        calculateBMI.text = "BMI is \(bmi)"
    }
}

