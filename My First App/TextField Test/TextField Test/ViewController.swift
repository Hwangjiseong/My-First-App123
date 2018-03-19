//
//  ViewController.swift
//  TextField Test
//
//  Created by D7703_02 on 2018. 3. 19..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTextFeild.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //delegate 연결
        
    }
    
    @IBAction func Button(_ sender: UIButton) {
        myLabel.text = myTextFeild.text
        myTextFeild.text = ""
        myTextFeild.resignFirstResponder()
        
    }
    //UItextfiedlDelegate method
    //called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("I pressed return key")
        //키패드를 내림
        myTextFeild.resignFirstResponder()
        return true
    }
    

}

