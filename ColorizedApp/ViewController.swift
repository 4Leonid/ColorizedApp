//
//  ViewController.swift
//  ColorizedApp
//
//  Created by EkaterinaP on 04.03.2022.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var coloredView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coloredView.layer.cornerRadius = 16
        
        redSlider.configure(tintColor: .red)
        greenSlider.configure(tintColor: .green)
        blueSlider.configure(tintColor: .blue)
        
        redLabel.configure()
        greenLabel.configure()
        blueLabel.configure()
        
        redNumberLabel.configure(sliderValue: redSlider.value)
        greenNumberLabel.configure(sliderValue: greenSlider.value)
        blueNumberLabel.configure(sliderValue: blueSlider.value)
        
        setbackGroundColore()
    }
    
    @IBAction func sliderAction() {
        
        redNumberLabel.configure(sliderValue: redSlider.value)
        greenNumberLabel.configure(sliderValue: greenSlider.value)
        blueNumberLabel.configure(sliderValue: blueSlider.value)
        
        setbackGroundColore()
    }
    
    private  func setbackGroundColore() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

extension UISlider {
    func configure(tintColor: UIColor? = nil) {
        value = Float.random(in: 0...1)
        minimumTrackTintColor = tintColor
        minimumValue = 0
        maximumValue = 1
    }
}

extension UILabel {
    func configure(sliderValue: Float? = nil) {
        textColor = .white
        guard let sliderValue = sliderValue else { return }
        text = String(format: "%.2f", sliderValue)
    }
}
