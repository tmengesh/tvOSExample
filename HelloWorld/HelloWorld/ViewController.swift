//
//  ViewController.swift
//  HelloWorld
//
//  Created by Tewodros Mengesha on 26/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLable.text = ""
    }

    @IBAction func buttonPressed(_ sender: Any)
    {
        if(myBtn.currentTitle == "Click Me!")
        {
            self.myLable.text = "Hello, world"
            myBtn.setTitle("Reset", for: .normal)
        }
        else
        {
            self.myLable.text = "Reset has been clicked"
            myBtn.setTitle("Click Me!", for: .normal)
        }
    
        
    }


}

