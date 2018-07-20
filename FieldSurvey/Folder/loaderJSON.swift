//
//  loaderJSON.swift
//  FieldSurvey
//
//  Created by Jacob Paul Hassler on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import Foundation

class JSONLoader
{
    class func load(fileName: String) -> [ClassEvent]
    {
        var events = [ClassEvent]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
            events = parserJSON.parse(data)
        }
        return events
    }
    
}
