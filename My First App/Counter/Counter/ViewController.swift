//
//  ViewController.swift
//  Counter
//
//  Created by D7703_02 on 2018. 3. 19..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    
    @IBOutlet weak var lblCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btReset(_ sender: UIButton) {
        counter = 0
        lblCounter.text = String(counter)
    }
    
    @IBAction func btCounter(_ sender: UIButton) {
        counter = counter + 1
        print("#\(counter)button pressed")
        lblCounter.text = String(counter)
        
        
    }
    
}

