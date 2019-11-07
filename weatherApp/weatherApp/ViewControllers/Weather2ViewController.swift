//
//  Weather2ViewController.swift
//  weatherApp
//
//  Created by Tewodros Mengesha on 28/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class Weather2ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let cityData = CityDetails()
    @IBOutlet var collectionView1 : UICollectionView!
    let reuseIdentifier = "FeaturedCell"
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat
    {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat
    {
        return 50
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insertForSectionAtIndex section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsets(top: 0.0, left: 50.0, bottom: 0.0, right: 50.0)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == self.collectionView1)
        {
            return cityData.cities.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == self.collectionView1){
            let cell : FeaturedCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! FeaturedCollectionViewCell
            let imageFileName = cityData.cities[indexPath.row]
            cell.featuredImage.image = UIImage(named: imageFileName)
            cell.lblCity.text = cityData.cityNames[indexPath.row]
            
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cityData.getDataFromJson(selected: indexPath.row)
        var celcious = (Double(cityData.title)! - 32) * 5/7
        celcious = (celcious*100).rounded()/100
        let alretController = UIAlertController(title: cityData.summary, message: "\(celcious) °C", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alretController.addAction(cancelAction)
        self.present(alretController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
