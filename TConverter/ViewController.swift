//
//  ViewController.swift
//  TConverter
//
//  Created by Виктор Байков on 07.09.2020.
//  Copyright © 2020 Виктор Байков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrernheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        fahrernheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
}

