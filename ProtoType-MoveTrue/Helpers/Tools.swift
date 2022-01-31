//
//  Tools.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/31/22.
//

import Foundation


struct Rational {

   
    
    
    static func converterDateTime (_ a: ContentModel, _ b: Int) -> Date {
        
        var dateComponents = DateComponents()
        dateComponents.year = a.modules[b].year
        dateComponents.month = a.modules[b].month
        dateComponents.day = a.modules[b].day
        dateComponents.timeZone = TimeZone(abbreviation: a.modules[b].timezone) // Japan Standard Time
        dateComponents.hour = a.modules[b].hour
        dateComponents.minute = a.modules[b].minute

        // Create date from components
        let userCalendar = Calendar(identifier: .gregorian) // since the components above (like year 1980) are for Gregorian
        let someDateTime = userCalendar.date(from: dateComponents)
        
        return someDateTime!
    }
    
}
