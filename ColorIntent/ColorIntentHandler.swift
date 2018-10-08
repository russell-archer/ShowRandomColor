//
//  ColorIntentHandler.swift
//  ColorIntent
//
//  Created by Russell Archer on 06/10/2018.
//  Copyright © 2018 Russell Archer. All rights reserved.
//

import Foundation
import ColorGenerator

class ColorIntentHandler: NSObject, ShowRandomColorIntentHandling {
    
    func confirm(intent: ShowRandomColorIntent, completion: @escaping (ShowRandomColorIntentResponse) -> Swift.Void) {
        completion(ShowRandomColorIntentResponse(code: .ready, userActivity: nil))
    }
    
    func handle(intent: ShowRandomColorIntent, completion: @escaping (ShowRandomColorIntentResponse) -> Void) {
        let colorInfo = Generate.randomColor()
        
        // Save the generated random color in our shared user default plist so the app extension UI can access it
        let defaults = UserDefaults.init(suiteName: "group.com.rarcher.ShowRandomColor.Shared")
        defaults!.set(colorInfo.name, forKey: "colorName")
        
        // Tell Siri the shortcut was a success
        completion(ShowRandomColorIntentResponse.success(colorName: colorInfo.name))
    }
}
