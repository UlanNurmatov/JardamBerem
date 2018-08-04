//
//  ReviewViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/4/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var reviewField: UITextView!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var review: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func sendReviewTapped() {
        let feedbackModel = Review(email: emailField.text!, reviewText: reviewField.text!)
        ServerManager.shared.sendReview(review: feedbackModel, completion: success, error: showError)
        
    }
    func success() {
        showSucsessAlert(withTitle: "Отзыв", andMessage: "Ваш отзыв успешно отправлен")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }
    

   

}
