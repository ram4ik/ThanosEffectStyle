//
//  ViewController.swift
//  ThanosEffectStyle
//
//  Created by Ramill Ibragimov on 02.01.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import UIKit
import Disintegrate

class ViewController: UIViewController {

    @IBOutlet weak var textThanosEffect: UILabel!
    @IBOutlet weak var winterImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let allControls = [textThanosEffect, winterImage]
        
        allControls.forEach { (control) in
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                control?.disintegrate(direction: .upperRight, estimatedTrianglesCount: 900)
            }
        }
    }


}

