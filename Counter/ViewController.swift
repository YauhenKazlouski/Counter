//
//  ViewController.swift
//  Counter
//
//  Created by PlAdmin on 15.11.24.
//

import UIKit

class ViewController: UIViewController {

    private var counter = 0
    
    @IBOutlet weak var historyOfChengesView: UIView!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDecreaseCounter(_ sender: Any) {
        counter -= 1
        changeCounterLabel()
    }
    
    @IBAction func buttonResetCounter(_ sender: Any) {
        counter = 0
        changeCounterLabel()
    }
    
    @IBAction func buttonIncreaseCounter(_ sender: Any) {
        counter += 1
        changeCounterLabel()
    }
    
    private func changeCounterLabel () {
        counterLabel.text = "Значение счетчика: \(counter)"
    }
}

