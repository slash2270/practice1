//
//  SpeakerVoiceController.swift
//  practice1
//
//  Created by user on 2022/9/12.
//

import UIKit
import AVFoundation

class SpeakerVoiceController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var voiceSlider: UISlider!
    
    @IBOutlet weak var speedSlider: UISlider!
    
    @IBOutlet weak var labelVoice: UILabel!
    
    @IBOutlet weak var labelSpeed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
    }

    @IBAction func button(_ sender: Any) {
        let speechUtterance = AVSpeechUtterance(string:textField.text!)
        let synthesizer = AVSpeechSynthesizer()
              speechUtterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
              speechUtterance.pitchMultiplier = voiceSlider.value
              speechUtterance.rate = speedSlider.value
          synthesizer.speak(speechUtterance)
    }
    
    @IBAction func voiceListener(_ sender: Any) {
        labelVoice.text = String(Int(voiceSlider.value))
    }
    
    @IBAction func speedListener(_ sender: Any) {
        labelSpeed.text = String(Int(speedSlider.value))
    }
    
}
