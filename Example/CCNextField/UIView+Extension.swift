//
//  UIView+Extension.swift
//  CCNextField_Example
//
//  Created by Elyas on 03/05/2022.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import UIKit

extension UIView {
    
    func curved() {
        
        layer.cornerRadius = layer.bounds.height / 2.4
        clipsToBounds = true
    }
    
}
