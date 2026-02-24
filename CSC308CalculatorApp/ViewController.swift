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
        //let op1Value = Double(op1.text ?? "") ?? 0
        //let op2Value = Double(op2.text ?? "") ?? 0
        //var result: Double = 0
        
        guard let op1Value = op1.text, let a = Int(op1Value)else{
            let alert = UIAlertController(title: "Error", message: "Please enter a number", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        guard let op2Value = op2.text, let b = Int(op2Value)else{
            let alert = UIAlertController(title: "Error", message: "Please enter a number", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        guard let op = operButton.title(for: .normal) else{
            let alert = UIAlertController(title: "Error", message: "Please select an operator", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            return
        }
        
        var result: Int? = nil
        
        switch op {
        case "+":
            result = a + b
            break
        case "-":
            result = a - b
            break
        case "*":
            result = a * b
            break
        case "/":
            result = a / b
            break
        default:
            let alert = UIAlertController(title: "Error", message: "Please select an operator", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default)
            alert.addAction(action)
            present(alert, animated: true)
            break
        }
        
        displayLabel.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

