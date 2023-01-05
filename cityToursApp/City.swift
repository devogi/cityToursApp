//
//  City.swift
//  cityToursApp
//
//  Created by oğuzhan salkım on 6.01.2023.
//

import Foundation
import UIKit

class City {
    var cityName : String
    var regionName : String
    var pic : UIImage
    
    init(cityName: String, regionName: String, pic: UIImage) {
        self.cityName = cityName
        self.regionName = regionName
        self.pic = pic
    }
    
}
