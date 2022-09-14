//
//  FastAndFuriousController.swift
//  practice1
//
//  Created by user on 2022/9/12.
//

import UIKit

class FastAndFuriousController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
    }

    @IBAction func slider(_ sender: Any) {
        
      imageView.image = UIImage(named:"\(Int(slider.value)).jpg")

      //Slider是浮點數，記得要做型別轉換，轉換成整數，不然會出錯
        
      textView.text =  "這是玩命關頭第" + String(Int(slider.value)) + "集"

      label.text =  "這是玩命關頭第" + String(Int(slider.value)) + "集"
        
    }
    
}
