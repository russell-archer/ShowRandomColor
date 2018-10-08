//
//  Generate.swift
//  ColorGenerator
//
//  Created by Russell Archer on 05/10/2018.
//  Copyright © 2018 Russell Archer. All rights reserved.
//

import Foundation
import UIKit

public class Generate {
    public static func randomColor() -> (color: UIColor, name: String) {
        var color: UIColor?
        var colorName: String?
        
        switch Int.random(in: 0...6) {
        case 0:
            color = UIColor.black
            colorName = "black"
        case 1:
            color = UIColor.red
            colorName = "red"
        case 2:
            color = UIColor.green
            colorName = "green"
        case 3:
            color = UIColor.blue
            colorName = "blue"
        case 4:
            color = UIColor.purple
            colorName = "purple"
        case 5:
            color = UIColor.orange
            colorName = "orange"
        case 6:
            color = UIColor.yellow
            colorName = "yellow"
        default:
            color = UIColor.white
            colorName = "white"
        }
        
        return (color!, colorName!)
    }
    
    public static func rgb(colorName: String) -> (r: CGFloat, g: CGFloat, b: CGFloat) {
        switch colorName {
        case "black":   return (0, 0, 0)
        case "red":     return (1, 0, 0)
        case "green":   return (0, 1, 0)
        case "blue":    return (0, 0, 1)
        case "purple":  return (0.5, 0, 0.5)
        case "orange":  return (1, 0.5, 0)
        case  "yellow": return (1, 1, 0)
        default:        return (1, 1, 1)
        }
    }
}

