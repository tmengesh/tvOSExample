//
//  CityDetails.swift
//  weatherApp
//
//  Created by Tewodros Mengesha on 28/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class CityDetails: NSObject {
    let cities = ["Oulu.jpg", "Tampere.jpg", "Turku.jpg", "Jyvaskyla.jpg", "Helsinki.jpg"]
    let cityNames = ["Oulu", "Tampere", "Turku", "Jyväskylä", "Helsinki"]
    let cityLatLong = ["https://api.darksky.net/forecast/e35dbfbdb7d55e1b381f62fe294d4d06/65.0121,25.4651",
                       "https://api.darksky.net/forecast/e35dbfbdb7d55e1b381f62fe294d4d06/61.4978,23.7610",
                       "https://api.darksky.net/forecast/e35dbfbdb7d55e1b381f62fe294d4d06/60.4518,22.2666",
                       "https://api.darksky.net/forecast/e35dbfbdb7d55e1b381f62fe294d4d06/62.2426,25.7473",
                       "https://api.darksky.net/forecast/e35dbfbdb7d55e1b381f62fe294d4d06/60.1699,24.9384"]
    var title : String = ""
    var summary : String = ""
    
    func getDataFromJson (selected : Int)
    {
        if let url = NSURL(string: cityLatLong[selected]){
            if let data = NSData(contentsOf: url as URL){
                do{
                    let parsed = try JSONSerialization.jsonObject(with: data as Data, options: JSONSerialization.ReadingOptions.allowFragments)
                    let newDic = parsed as? NSDictionary
                    let cityForcast = newDic?["currently"] as? NSDictionary
                    
                    title = "\(cityForcast!["temperature"]!)"
                    summary = "\(cityForcast!["summary"]!)"
                }catch let error as NSError{
                    title = "A jSON parsing error has occured"
                    summary = error.description
                }
            }
        }
    }


}
