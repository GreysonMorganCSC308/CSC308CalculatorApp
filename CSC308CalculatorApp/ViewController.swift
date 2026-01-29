//
//  ViewController.swift
//  CSC308CalculatorApp
//
//  Created by Morgan, Ashley F. on 1/29/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var op1: UITextField!
    @IBOutlet weak var op2: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var operButton: UIButton!
    
    @IBAction func operButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let plusAction = UIAlertAction(title: "+", style: .default) { (_) in
            self.operButton.setTitle("+", for: .normal)
        }
        let minusAction = UIAlertAction(title: "-", style: .default) { (_) in
            self.operButton.setTitle("-", for: .normal)
        }
        let timesAction = UIAlertAction(title: "*", style: .default) { (_) in
            self.operButton.setTitle("*", for: .normal)
        }
        let divideAction = UIAlertAction(title: "/", style: .default) { (_) in
            self.operButton.setTitle("/", for: .normal)
        }
        
        actionSheet.addAction(plusAction)
        actionSheet.addAction(minusAction)
        actionSheet.addAction(timesAction)
        actionSheet.addAction(divideAction)
        present(actionSheet, animated: true, completion: nil)
    }
    
    
    @IBAction func calculateButton(_ sender: Any) {
        let op1Value = Double(op1.text ?? "") ?? 0
        let op2Value = Double(op2.text ?? "") ?? 0
        var result: Double = 0
        switch operButton.titleLabel?.text ?? "" {
        case "+":
            result = op1Value + op2Value
            break
        case "-":
            result = op1Value - op2Value
            break
        case "*":
            result = op1Value * op2Value
            break
        case "/":
            result = op1Value / op2Value
            break
        default:
            break
        }
        
        self.displayLabel.text = String(result)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

