//
//  UIView.swift
//  BookUp
//
//  Created by Luiz Fernando Cunha Duarte on 02/08/18.
//  Copyright © 2018 BemEstamos. All rights reserved.
//

import Foundation
import UIKit


/*
 
 Creates a gradient layer in the selected view
 
 */

extension UIView {
    
    func setGradientLayer(firstColor: UIColor, secondColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [1.0, 0.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1.0)
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

/*
 
 If you are trying to use this extension in a view created programmatically keep in mind that it is necessary to set the views dimensions before this method is called. Otherwise, the gradient layer will not appear.
 
*/
