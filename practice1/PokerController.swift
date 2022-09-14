//
//  PokerController.swift
//  practice1
//
//  Created by user on 2022/9/14.
//

import UIKit

class PokerController: UIViewController {
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var iv3: UIImageView!
    @IBOutlet weak var iv4: UIImageView!
    @IBOutlet weak var iv5: UIImageView!
    @IBOutlet weak var iv6: UIImageView!
    @IBOutlet weak var btnWash: UIButton!
    var cardButtons : [UIImageView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

       cardButtons = [iv1, iv2, iv3, iv4, iv5, iv6]
        
    }
    
    @IBAction func btnWash(_ sender: Any) {
        for card in cardButtons {
                let number = Int.random(in:1...13)
                    print(number)
                let image = UIImage(named:"spades\(number)")
                card.image = image
                //card.setBackgroundImage(image,for: .normal)
            }
    }
    
}
