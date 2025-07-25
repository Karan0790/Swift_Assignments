//
//  ViewController.swift
//  login
//
//  Created by Student on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    
    @IBAction func forgotButton(_ sender: UIButton) {
        performSegue(withIdentifier: "main", sender: sender)
    }
    
    @IBAction func forgotPass(_ sender: UIButton) {
        performSegue(withIdentifier: "main", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else{
            segue.destination.navigationItem.title = inputField.text
        }
        
    }
    
}

