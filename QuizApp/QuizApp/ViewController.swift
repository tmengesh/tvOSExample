//
//  ViewController.swift
//  QuizApp
//
//  Created by Tewodros Mengesha on 27/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func btnStockholm(_ sender: Any)
    {
        showAlert(status: "Wrong!", title: "Bummer, you got it wrong!")
    }
    
    @IBAction func btnOslo(_ sender: Any)
    {
        showAlert(status: "Wrong!", title: "Bummer, you got it wrong!")
    }
    
    @IBAction func btnRio(_ sender: Any)
    {
        showAlert(status: "Wrong!", title: "Bummer, you got it wrong!")
    }    
    @IBAction func btnHelsinki(_ sender: Any)
    {
        showAlert(status: "Correct!", title: "Whoo! That is the correct response")
    }
    
    func showAlert(status: String, title:String)
    {
        let alertController = UIAlertController(title: status, message: title, preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            
        }
        alertController.addAction(cancelAction)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alertController.addAction(ok)
        
        self.present(alertController, animated: true) {
        }
    }
}

