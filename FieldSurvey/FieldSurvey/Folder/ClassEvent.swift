//
//  ClassEvent.swift
//  FieldSurvey
//
//  Created by Jacob Paul Hassler on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import Foundation

struct ClassEvent
{
    let classification: Class
    let title: String
    let description: String
    let date: Date
    init(classification: Class, title: String, description: String, date: Date)
    {
        self.title = title
        self.classification = classification
        self.description = description
        self.date = date
    }
    
    init?(classificationName: String, title: String, description: String, date: Date)
    {
        if let classification = Class(rawValue: classificationName)
        {
            self.init(classification: classification, title: title, description: description, date: date)
        }
        else
        {
            return nil
        }
    }
    
}
