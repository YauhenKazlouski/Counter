//
//  ViewController.swift
//  Counter
//
//  Created by PlAdmin on 15.11.24.
//

import UIKit

class ViewController: UIViewController {

    private var counter = 0
    
    @IBOutlet weak var logerChangeCounterView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logerChangeCounterView.text = "История изменений:\n"
        counterLabel.text = "Значение счетчика: \(counter)"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonDecreaseCounter(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            changeCounterLabel()
            logerChangeCounterView.text += "\(getDateChanges()): значение изменено на -1\n"
        } else {
            logerChangeCounterView.text += "\(getDateChanges()): попытка уменьшить значение счетчика ниже 0\n"

        }
    }
    
    @IBAction func buttonResetCounter(_ sender: Any) {
        counter = 0
        changeCounterLabel()
        logerChangeCounterView.text += "\(getDateChanges()): значение сброшено\n"

    }
    
    @IBAction func buttonIncreaseCounter(_ sender: Any) {
        counter += 1
        changeCounterLabel()
        logerChangeCounterView.text += "\(getDateChanges()): значение изменено на +1\n"

    }
    
    private func changeCounterLabel() {
        counterLabel.text = "Значение счетчика: \(counter)"
    }
    
    private func getDateChanges() -> String {
        let getDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm:ss"
        
        return dateFormatter.string(from: getDate)
    }
}

