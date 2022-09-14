//
//  ViewController.swift
//  practice1
//
//  Created by user on 2022/9/7.
//

import UIKit

class ViewController: UIViewController {
    
   override func viewDidLoad() {
        super.viewDidLoad()
        // 在載入視圖後，做另外的設定，通常是來自一個 nib 檔
        // 加載視圖後進行任何其他設置。
    }
    
    @IBAction func showMessage(sender: UIButton) {
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

}
