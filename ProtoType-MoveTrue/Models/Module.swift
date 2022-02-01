//
//  Modules.swift
//  ProtoType-MoveTrue
//
//  Created by user210522 on 1/29/22.
//

import Foundation

class Module: Identifiable, Decodable {
    
    var id:Int
    var category:String
    var title:String
    var length: String
    var year: Int
    var month: Int
    var day: Int
    var timezone: String
    var hour: Int
    var minute: Int
    var description: String
    var video: String
    
}

class User: Identifiable, Decodable {
    
    var id:Int
    var name:String
    var admin:Bool
    var fullbody:Bool
    var flexibility:Bool
    var seminar:Bool
    var purchased: [Int]
    
}

