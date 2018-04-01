//
//  CityInfo.swift
//  lab2.2
//
//  Created by Yuriy Romanovskiy on 01.04.18.
//  Copyright © 2018 Yuriy Romanovskiy. All rights reserved.
//

import UIKit
struct Country: Decodable {
    var name: String
    var fullName: String
    var english: String
    var id: String
    var country_code3: String
    var iso: Int
    var telcod: Int
    var location: String
    var capital: Int
    var mcc: Int
    var lang: String
    var langcod: String
}


struct Region: Decodable {
    var id: Int
    var name: String
    var okrug: String
    var autocod: String
    var capital: Int
    var english: String
    var iso: String
    var country: String
}


struct Rajon: Decodable {
    var id: Int
    var name: String
    var area: Int
    var country: String
    var capital: Int
    var english: String
}

struct Capital: Decodable {
    var id: Int
    var name: String
    var area: Int
    var telcod: Float
    var latitude: Float
    var longitude: Float
    var timezone: Int
    var english: String
    var rajon: Int
    var country: String
    var sound: String
    var level: Int
    var iso: String
    var vid: Int
    var post: Int
}


struct CityInfo: Decodable {
   var ip: String
    var country: Country
    var region: Region
    var okrug: String
    var rajon: Rajon
    var city_id: Int
    var city: String
    var city_english: String
    var city_telcod: Float
    var lapitude: Float
    var longitude: Float
    var autocod: Float
    var fullname: String
    var english: String
    var iso: Int
    var level: Int
    var country_telcod: Int
    var location: String
    var capital: Capital
    var time_zone: Int
    var post: Int
    var ImgFlag: String
    var vid_id: Int
    var vid: String
    var limit: Int
    
}
