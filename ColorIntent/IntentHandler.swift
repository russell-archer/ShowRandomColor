//
//  IntentHandler.swift
//  ColorIntent
//
//  Created by Russell Archer on 05/10/2018.
//  Copyright © 2018 Russell Archer. All rights reserved.
//

import Intents

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        guard intent is ShowRandomColorIntent else {
            fatalError("Can't handle intent \(intent)")
        }
        
        return ColorIntentHandler()
    }
}
