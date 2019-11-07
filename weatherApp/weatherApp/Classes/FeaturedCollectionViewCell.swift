//
//  FeaturedCollectionViewCell.swift
//  weatherApp
//
//  Created by Tewodros Mengesha on 28/06/2018.
//  Copyright © 2018 Finwe Ltd. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    @IBOutlet var featuredImage : UIImageView!
    @IBOutlet var lblCity : UILabel!
    
    
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
        if(self.isFocused)
        {
            self.featuredImage.adjustsImageWhenAncestorFocused = true
        }
        else{
            self.featuredImage.adjustsImageWhenAncestorFocused = false
        }
    }
    
}
