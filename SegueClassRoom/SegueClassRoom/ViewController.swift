//
//  ViewController.swift
//  SegueClassRoom
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var toggleSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func toggleYellow(_ sender: UIButton) {
        if(toggleSwitch.isOn){
            performSegue(withIdentifier: "yellow", sender: nil)
        }
        else{
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textfield.text
//    }
}

