//
//  InfoDetailsViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 8/7/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class InfoDetailsViewController: UIViewController {

    @IBOutlet weak var viewForHtml: UIView!
    
    var info: Info?
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let html = info?.description
        
        let webView = UIWebView()
        webView.loadHTMLString("\(html)", baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    

}
