//
//  ViewController.swift
//  basic_Interactions
//
//  Created by Student on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = "Your text will be shown here!"
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleTheme(_ sender: UISwitch) {
        if self.overrideUserInterfaceStyle == .dark{
            self.overrideUserInterfaceStyle = .light
            
        }else{
            self.overrideUserInterfaceStyle = .dark
        }
    }
    
    
    @IBAction func clearTextButton(_ sender: UIButton) {
        textLabel.text = ""
        inputField.text = ""
    }
    
    @IBAction func setTextButton(_ sender: UIButton) {
        let text = inputField.text ?? "0"
        textLabel.text = text
    }
}

