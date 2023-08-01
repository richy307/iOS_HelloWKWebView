//
//  ViewController.swift
//  iOS_HelloWKWebView
//
//  Created by 王麒翔 on 2023/8/1.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var myWebview: WKWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    // 網頁載入完成之前
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        myActivityIndicator.startAnimating()
    }
    
    // 網頁載入完成之後
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myActivityIndicator.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myWebview.navigationDelegate = self
        
        let strURL = "https://www.apple.com/tw/"
        let strURL2 = "http://www.bild.de/" // https 去掉s
        
        // string -> URL -> URLRequest -> Webview.load
        if let url = URL(string: strURL2) {
            let request = URLRequest(url: url)
            myWebview.load(request)
        }
    }


}

