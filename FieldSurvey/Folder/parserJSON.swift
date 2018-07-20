//
//  parserJSON.swift
//  FieldSurvey
//
//  Created by Jacob Paul Hassler on 7/19/18.
//  Copyright © 2018 jphyr4. All rights reserved.
//

import Foundation

class parserJSON
{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [ClassEvent]
    {
        var classEvents = [ClassEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String, status == "ok"
        {
            if let classes = root["observations"] as? [Any]
            {
                for observation in classes
                {
                    if let observation = observation as? [String: String]
                    {
                        if let classification = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString)
                        {
                            if let classEvent = ClassEvent(classificationName: classification, title: title, description: description, date: date)
                            {
                                classEvents.append(classEvent)
                            }
                        }
                    }
                }
            }
        }
        return classEvents
    }
}
