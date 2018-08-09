//
//  UIImage.swift
//  BookUp
//
//  Created by Luiz Fernando Cunha Duarte on 23/07/18.
//  Copyright © 2018 BemEstamos. All rights reserved.
//

import Foundation
import UIKit

/*
 
 Extension that encodes and decodes UIImagem in the jpg or png
 
*/


public enum ImageFormat {
    case png
    case jpeg(CGFloat)
}

extension UIImage {
    
    public func base64Encode(format: ImageFormat) -> String? {
        var imageData: Data?
        switch format {
        case .png: imageData = UIImagePNGRepresentation(self)
        case .jpeg(let compression): imageData = UIImageJPEGRepresentation(self, compression)
        }
        return imageData?.base64EncodedString()
    }
    
    static public func base64Decode(encodedString: String) -> UIImage? {
        
        let dataDecoded : Data = Data(base64Encoded: encodedString, options: .ignoreUnknownCharacters)!
        let decodedImage = UIImage(data: dataDecoded)
        
        return decodedImage
    }
}
