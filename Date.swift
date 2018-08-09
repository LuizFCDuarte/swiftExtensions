//  Date.swift
//
//  Created by Luiz Fernando Cunha Duarte on 01/08/18.
//  Copyright © 2018 BemEstamos. All rights reserved.



import Foundation

/*
 
 Extension to the Date type, in order to make some necessities simpler to handle.
 This extensions contains some formatters that are really helpful when you are working with the Date type

 */

extension Date {
    
    ///A Date formatter that sets a Date in the format "Day-Month-Year"
    
    private var dd_mm_yyyyFormater:DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = Calendar.current.timeZone
        dateFormatter.locale = Calendar.current.locale
        dateFormatter.dateFormat = "dd-MM-yyyy"
        return dateFormatter
    }
    
    /// A Date formatter that sets a Date in the format "Hours : minutes : seconds"
    
    private var hh_mm_ss_Formater:DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm:ss"
        return dateFormatter
    }
    
    /// Tranforms a date in the String format "Day-Month-Year"
    
    var dd_mm_yyyyFormat:String {
        return dd_mm_yyyyFormater.string(from: self)
    }
    
    /// Transforms a date in the String format "Hours : minutes : seconds"
    
    var hh_mm_ss_Format:String {
        return hh_mm_ss_Formater.string(from: self)
    }
    
    /// Date formatter that set the Date in the hour format
    
    private var hoursFormatter:DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh"
        return dateFormatter
    }
    
    /// Date formatter that set the Date in the minute format
    
    private var minutesFormater:DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "mm"
        return dateFormatter
    }
    
    /// Date formatter that set Date in the second format
    
    private var secondsFormater:DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "ss"
        return dateFormatter
    }
    
    /// Transforms a Date in the String format "hour"
    
    var hours:String {
        return hoursFormatter.string(from: self)
    }
    
    /// Transforms a Date in the String format "minute"
    
    var minutes:String {
        return minutesFormater.string(from: self)
    }
    
    /// Transforms a Date in the String format "second"
    
    var seconds:String {
        return secondsFormater.string(from: self)
    }
    
    /// Transforms a Date in the Brazilian hour format
    
    var BRTime: String {
        return DateFormatter().BRDateTimeFormatter.string(from: self)
    }
    
    /// Transforms a Date in the Brazilian date format
    
    var BRDate: String {
        return DateFormatter().BRDateFormatter.string(from: self)
    }
    
    /**
        Function that compares if the one date is the same of another, in the brazilian format
     
     - Parameters:
        - otherDate: Date
     - Returns: Bool

    */
    
    func isTheSameDay(of otherDate:Date)->Bool {
        return self.BRDate.compare(otherDate.BRDate) == .orderedSame
    }
    
}


extension DateFormatter {
    
    ///  A Date formatter that sets a Date in the format "Hours : minutes : seconds", which is used in Brazil
    
    var BRDateTimeFormatter: DateFormatter {
        self.dateFormat = "HH:mm:ss"
        return self
    }
    
    /// A Date formatter that sets a Date in the format "Day-Month-Year", which is the type used in Brazil
    
    var BRDateFormatter:DateFormatter {
        self.dateFormat = "dd-MM-yyyy"
        return self
    }
}


