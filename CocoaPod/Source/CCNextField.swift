//
//  CCNextField.swift
//  CCNextField
//
//  Created by Conceit LLC on 03/05/2022.
//

import UIKit

@available(iOS 13.0, *)
extension UITextField {
    
    /// - Parameters:
    ///   - resigns: Indicates wether to resign the current textField if it's the last one.
    ///   - action: Pass the function you wish to execute e.g. sign up, send, etc. Leave empty if you don't wish to execute any.
    func nextField(resigns: Bool, action: @escaping () -> Void) {
        
        /// gets currentt viewController
        guard let window = getKeyWindow() else { return }
        guard let vc = window.rootViewController else { return }
        
        if let nextField = vc.view.viewWithTag(tag + 1) {
            
            nextField.becomeFirstResponder()
            
        } else {
            
            if resigns { resignFirstResponder() }
            action()
        }
    }
    
    
    private func getKeyWindow() -> UIWindow? {
        let window = UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})
            .map({$0 as? UIWindowScene})
            .compactMap({$0})
            .first?.windows
            .filter({$0.isKeyWindow}).first
        
        return window
    }
}
