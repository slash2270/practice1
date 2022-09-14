//
//  dragonBallController.swift
//  practice1
//
//  Created by user on 2022/9/12.
//

import UIKit
import AVFoundation

class DragonBallController: UIViewController {

    @IBOutlet weak var buttonLakeScope: UIButton!
    @IBOutlet weak var buttonEarphone: UIButton!
    @IBOutlet weak var buttonTitle: UIButton!
    @IBOutlet weak var labelTitle: UILabel!
    let player = AVPlayer(url: URL(string:"https://reurl.cc/0Xmgmk")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 在載入視圖後，做另外的設定，通常是來自一個 nib 檔
        // 加載視圖後進行任何其他設置。
    }
    
    @IBAction func buttonTitle(_ sender: Any) {
        if(labelTitle.text == "Label"){
            labelTitle.text = "Hello World!";
        }else if(labelTitle.text == "Hello World!"){
            labelTitle.text = "Label";
        }
    }
    
    @IBAction func buttonEarPhone(_ sender: Any) {
        player.play();
    }
    
}
