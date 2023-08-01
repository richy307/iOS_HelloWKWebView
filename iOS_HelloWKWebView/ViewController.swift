//
//  ViewController.swift
//  iOS_HelloWKWebView
//
//  Created by 王麒翔 on 2023/8/1.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebview: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let strURL = "https://www.apple.com/tw/"
        let strURL2 = "http://www.bild.de/" // https 去掉s
        
        if let url = URL(string: strURL2) {
            let request = URLRequest(url: url)
            myWebview.load(request)
        }
    }


}

