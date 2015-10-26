//
//  ComicManager.swift
//  Calvin and Hobbes
//
//  Created by Adam Van Prooyen on 10/1/15.
//  Copyright © 2015 Adam Van Prooyen. All rights reserved.
//

import Foundation
import Timepiece

class ComicManager {
    
    let startDate = NSDate.date(year: 1985, month: 11, day: 18)
    let endDate = NSDate.date(year: 1995, month: 12, day: 31)
    
    private var comics = [NSDate: Comic]()
    
    func comicForDate(date: NSDate) -> Comic {
        if let comic = comics[date] {
            return comic
        } else {
            let comic = Comic(date: date)
            comics[date] = comic
            return comic
        }
    }
    
}