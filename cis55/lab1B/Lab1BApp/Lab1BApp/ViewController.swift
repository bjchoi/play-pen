//
//  ViewController.swift
//  Lab1BApp
//
//  Created by BJ Choi on 1/26/15.
//  Copyright (c) 2015 DeAnza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputPay: UITextField!
    
    @IBOutlet var inputDays: UITextField!
    
    @IBOutlet var outputPay: UILabel!
    
    @IBAction func calculatePay(sender: AnyObject) {
        var startingPayInCents : Int! = inputPay.text.toInt()
        var numberOfDays : Int! = inputDays.text.toInt()
        
        var previousDayPay = 0
        var totalPay = 0
        outputPay.text = ""
        
        if (numberOfDays > 0) {
            for i in 1...numberOfDays
            {
                var dayPay : Int = 0
                if (i == 1) {
                    dayPay = startingPayInCents
                    previousDayPay = startingPayInCents
                } else {
                    dayPay = 2 * previousDayPay
                    previousDayPay = dayPay
                }
                totalPay += dayPay
                
                var dailyPayInDollar  = String(format: "%.2f", Double(dayPay) / 100.0)
                var totalPayIntDollar = String(format: "%.2f", Double(totalPay) / 100.0)
                
                var outText = "On day \(i), "
                    + "daily pay earned was $\(dailyPayInDollar) and "
                    + "total pay earned was $\(totalPayIntDollar)\n\n"
                outputPay.text = outputPay.text! + outText
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // initialize application
        inputPay.text = "10"
        inputDays.text = "5"
        outputPay.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

