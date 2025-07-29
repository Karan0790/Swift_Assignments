//
//  MiddleViewController.swift
//  orderOfEvents
//
//  Created by Student on 29/07/25.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var eventNumber = 1
    func addEvent(from: String){
        if let existingText = label.text{
            label.text = "\(existingText)\n Event number \(eventNumber) from \(from)"
            eventNumber += 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       addEvent(from: "ViewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    

}
