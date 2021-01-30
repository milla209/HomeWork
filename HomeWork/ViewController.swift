//
//  ViewController.swift
//  HomeWork
//
//  Created by Людмила Солопенко on 30.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
        
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
    }

    func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func numberRedSliderChanged() {
        let redNumber = round(100 * redSlider.value) / 100
        redLabel.text = String(redNumber)
    }
    
    @IBAction func numberGreenSliderChanged() {
        let greenNumber = round(100 * greenSlider.value) / 100
        greenLabel.text = String(greenNumber)
    }
    
    @IBAction func numberBlueSliderChanged() {
        let blueNumber = round(100 * blueSlider.value) / 100
        blueLabel.text = String(blueNumber)
    }
    
    @IBAction func colorSliderChanged() {
        changeColor()
    }
}

