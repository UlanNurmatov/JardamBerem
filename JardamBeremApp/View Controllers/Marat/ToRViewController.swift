//
//  ToRViewController.swift
//  JardamBeremApp
//
//  Created by Marat on 31.07.2018.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ToRViewController: UIViewController {

    @IBOutlet weak var isAgreedButton : UIButton!
    @IBOutlet weak var continueButton : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.continueButton.isHidden = true
        
        let firstTimeLoad : Bool = UserDefaults.standard.object(forKey: "isAgreesWithTOR") == nil
        
        if firstTimeLoad {

        } else {
            let board = UIStoryboard(name: "MaratStoryboard", bundle: nil)
            let vc = board.instantiateViewController(withIdentifier: "LanguageChooseVC")
            self.show(vc, sender: self)
        }
    }
    
    @IBAction func isAgreedButtonTapped () {
        if self.continueButton.isHidden {
            self.continueButton.isHidden = false
            self.isAgreedButton.setImage(UIImage(named: "agreed"), for: .normal)
        } else {
            self.continueButton.isHidden = true
            self.isAgreedButton.setImage(UIImage(named: "notAgreed"), for: .normal)
        }
    }
}
