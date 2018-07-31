//
//  ToRViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 31.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ToRViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstTimeLoad : Bool = UserDefaults.standard.object(forKey: "isAgreesWithTOR") == nil
        
        if firstTimeLoad {

        } else {
            let board = UIStoryboard(name: "MaratStoryboard", bundle: nil)
            let vc = board.instantiateViewController(withIdentifier: "LanguageChooseVC")
            self.show(vc, sender: self)
        }        
    }
}