//  Created by Luiz Fernando Cunha Duarte on 10/08/18.


import Foundation
import UIKit

/*

 Sets the constraint os an object
 
*/



extension UIView {
    
    func addAutoConstraint(topAnchor: NSLayoutYAxisAnchor, bottomAnchor: NSLayoutYAxisAnchor, centerXAnchor: NSLayoutXAxisAnchor, widthAnchor: CGFloat){
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        self.widthAnchor.constraint(equalToConstant: widthAnchor).isActive = true
    }
    
    func addAutoConstraint(topAnchor: NSLayoutYAxisAnchor, centerXAnchor: NSLayoutXAxisAnchor, widthAnchor: CGFloat, heightAnchor: CGFloat){
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        self.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        self.widthAnchor.constraint(equalToConstant: widthAnchor).isActive = true
    }
    
    func addAutoConstraint(topAnchor: NSLayoutYAxisAnchor, bottomAnchor: NSLayoutYAxisAnchor, leftAnchor: NSLayoutXAxisAnchor, rightAnchor: NSLayoutXAxisAnchor){
        self.topAnchor.constraint(equalTo: topAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        self.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        self.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    func addAutoConstraint(centerYAnchor: NSLayoutYAxisAnchor, centerXAnchor: NSLayoutXAxisAnchor, widthAnchor: CGFloat, heightAnchor: CGFloat){
        self.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        self.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        self.heightAnchor.constraint(equalToConstant: heightAnchor).isActive = true
        self.widthAnchor.constraint(equalToConstant: widthAnchor).isActive = true
    }
    
}


