//
//  IntentViewController.swift
//  ColorIntentUI
//
//  Created by Russell Archer on 05/10/2018.
//  Copyright © 2018 Russell Archer. All rights reserved.
//

import IntentsUI
import ColorGenerator

class IntentViewController: UIViewController, INUIHostedViewControlling {
    @IBOutlet weak var colorNameLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    var desiredSize: CGSize { return self.extensionContext!.hostedViewMaximumAllowedSize }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    // MARK: - INUIHostedViewControlling
    
    // Prepare your view controller for the interaction to handle.
    func configureView(for parameters: Set<INParameter>,
                       of interaction: INInteraction,
                       interactiveBehavior: INUIInteractiveBehavior,
                       context: INUIHostedViewContext,
                       completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void) {
        
        guard interaction.intent is ShowRandomColorIntent else {
            completion(false, Set(), .zero)
            return
        }
        
        // Load the random color that was saved in the intent handler from our shared user defaults plist
        let defaults = UserDefaults.init(suiteName: "group.com.rarcher.ShowRandomColor.Shared")
        let name = defaults!.string(forKey: "colorName")
        
        // Recreate the color
        let rgbInfo = Generate.rgb(colorName: name!)
        let color = UIColor(red: rgbInfo.r, green: rgbInfo.g, blue: rgbInfo.b, alpha: 1)
        
        // Set the app extension UI view color and name
        colorView.backgroundColor = color
        colorNameLabel.text = name
        
        completion(true, parameters, desiredSize)
    }
}
