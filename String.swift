//  String.swift

import Foundation

/*
 
 Extension that allows to split a String
 
*/

extension String {
    
    func split(regex pattern: String) -> [String] {
        
        guard let re = try? NSRegularExpression(pattern: pattern, options: [])
            else { return [] }
        
        let string = self as NSString
        let stop = "<ERROR>"
        let modifiedString = re.stringByReplacingMatches(
            in: self,
            options: [],
            range: NSRange(location: 0, length: string.length),
            withTemplate: stop)
        return modifiedString.components(separatedBy: stop)
    }
}
