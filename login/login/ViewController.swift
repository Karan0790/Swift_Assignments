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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = inputField.text
    }
    @IBAction func forgotUsernameButton(_ sender: Any) {
    }
    
    override func performSegue(withIdentifier: "forgotUsernameButton", sender: sender) {
        
    }
}

