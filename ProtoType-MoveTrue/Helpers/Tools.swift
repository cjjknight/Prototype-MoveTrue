//
//  Tools.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/31/22.
//

import Foundation
import simd


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
    
    static func doesUserHaveAccess (_ a: ContentModel, _ lessonIndex: Int, _ userIndex: Int) -> Bool {
    
    //Admins get full rights
    if a.users[userIndex].admin == true {return true}
    
    // If category matches what the user has access to
    if a.users[userIndex].fullbody == true && a.modules[lessonIndex].category == "FullBody" {return true}
    if a.users[userIndex].flexibility == true && a.modules[lessonIndex].category == "Flexibility" {return true}
    if a.users[userIndex].seminar == true && a.modules[lessonIndex].category == "Seminar" {return true}
    
    //If the user bought that lesson in particular
    if a.users[userIndex].purchased.contains(a.modules[lessonIndex].id) {return true}
    
    
    return false
    }
    
    //Function to identify if the user exists
    static func isUserInSystem (_ a: ContentModel, _ userName: String) -> Int {
      
    
       
        
        
    return 0
    }
    
    
    
}
