//
//  transportationAddViewController.swift
//  myApp
//
//  Created by 손한솔 on 3/22/24.
//

import Foundation
import UIKit
class transportationAddView: ViewController{
    
    @IBOutlet var typeBtn: UIButton!
    @IBOutlet var nameBtn: UIButton!
    @IBOutlet var dirBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        typeBtnConfig()
    }
    
    func typeBtnConfig(){
        let popUpButtonClosure = { (action: UIAction) in
            if action.title == "전철" {
                
            } else if action.title == "버스" {
                
            }
        }
        
        typeBtn.menu = UIMenu(title: "종류", children: [
            UIAction(title: "전철", handler: popUpButtonClosure),
            UIAction(title: "버스", handler: popUpButtonClosure),
        ])
        
        typeBtn.changesSelectionAsPrimaryAction = true
        typeBtn.showsMenuAsPrimaryAction = true
        
    }
}
