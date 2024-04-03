//
//  ViewController.swift
//  myApp
//
//  Created by 손한솔 on 3/19/24.
//

import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func changeViewBtn(_ sender: Any) {
        let backBarButtonItem = UIBarButtonItem(title: "취소", style: .plain, target: self, action: nil)
            self.navigationItem.backBarButtonItem = backBarButtonItem
    }
    

}
