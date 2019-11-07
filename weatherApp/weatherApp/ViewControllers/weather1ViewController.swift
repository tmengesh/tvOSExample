//
//  weather1ViewController.swift
//  weatherApp
//
//  Created by Tewodros Mengesha on 29/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class weather1ViewController: UIViewController {

    @IBOutlet var imgCity : UIImageView!
    @IBOutlet var lblCity: UILabel!
    @IBOutlet var lblTemperature: UILabel!
    @IBOutlet var lblSummary: UILabel!
    let cityData = CityDetails()
    
    func updateWeather(select :Int)
    {
      
        
        imgCity.image = UIImage(named: cityData.cities[select])
        lblCity.text = cityData.cityNames[select]
        cityData.getDataFromJson(selected: select)
        
        var celcious = (Double(cityData.title)! - 32) * 5/7
        celcious = (celcious*100).rounded()/100
        lblTemperature.text = "\(celcious) °C"
        lblSummary.text = cityData.summary
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateWeather(select: 0)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
