//
//  KoreaTvController.swift
//  practice1
//
//  Created by user on 2022/9/13.
//

import UIKit

class KoreaTvController: UIViewController {
    
    var timer: Timer?
    var oldTime = "00";
    let images = ["1","2","3","4","5"]
    var i = 0;
    
    @IBOutlet weak var ImageBlackBoard: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: ) { (_) in
            
            let now = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss\nyyyy/MMM/dd E"
            let time = formatter.string(from: now)
            self.label.text = time
            
            formatter.dateFormat = "mm"
            let newTime = formatter.string(from: now)
            if newTime > oldTime || (newTime == "00" && oldTime != "00") {
                self.ImageBlackBoard.image = UIImage(named: images[i])
                oldTime = newTime
                i = i + 1
                if i >= 5 {
                    i = 0
                }
            }
    }
        
        func didReceiveMemoryWarning(){
            super.didReceiveMemoryWarning()
        }
        
        func viewDidDissapear(_ animated: Bool) {
            if(timer != nil){
                timer?.invalidate()
            }
        }
        
    }
    

}
