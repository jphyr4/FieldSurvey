//
//  class.swift
//  FieldSurvey
//
//  Created by Jacob Paul Hassler on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//


import UIKit
enum Class: String
{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile 
    
    var image: UIImage?
    {
        return UIImage(named: self.rawValue + "Icon")
    }
}
