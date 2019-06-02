//
//  ViewController.swift
//  Calculator
//
//  Created by Ben Kaplan on 5/31/19.
//  Copyright © 2019 Ben Kaplan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;
    var previousNum: Double = 0;
    var perMath = false;
    var oper = 0;
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if perMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            perMath = false
        }
        else
        {
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        
        
         if label.text != "" && sender.tag != 11 && sender.tag != 16
         {
            previousNum = Double(label.text!)!
//            divide
            if sender.tag == 12
            {
                label.text = "/"
            }
//          mult
            else if sender.tag == 13
            {
                label.text = "*"
            }
//                minus
            else if sender.tag == 14
            {
                label.text = "-"
            }
//                 plus
            else if sender.tag == 15
            {
                label.text = "+"
            }
            
            oper = sender.tag;
            perMath = true;
        }
        else if sender.tag == 16
         {
            if oper == 12
            {
                label.text = String(previousNum / numberOnScreen)
            }
            if oper == 13
            {
                label.text = String(previousNum * numberOnScreen)
            }
            if oper == 14
            {
                label.text = String(previousNum - numberOnScreen)
            }
            if oper == 15
            {
                label.text = String(previousNum + numberOnScreen)
            }
        }
        else if sender.tag == 11
         {
            label.text = ""
            previousNum = 0;
            numberOnScreen = 0;
            oper = 0;
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

