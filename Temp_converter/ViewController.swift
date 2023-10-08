//
//  ViewController.swift
//  Temp_converter
//
//  Created by SIDHANT KAUSHIK on 08/10/23.
//

import UIKit

class ViewController: UIViewController {
    var n: Int = 0

    @IBOutlet weak var enterCelcius: UITextField!
    @IBOutlet weak var showResult: UILabel!
    @IBOutlet weak var noConversions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func conversion(_ sender: Any) {
        if let result = enterCelcius.text {
            if (result == ""){
                return
            }
            else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    showResult.text = String(output)
                    n += 1
                    noConversions.text = String(n)+" Conversions"
                }
            }
        }
    }
    
}

