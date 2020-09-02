//
//  help.swift
//  team1
//
//  Created by student3 on 25/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import WebKit
class help: UIViewController,WKNavigationDelegate,WKUIDelegate
{
    
    @IBOutlet var webki: WKWebView!
    var activityIndicator:UIActivityIndicatorView=UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webki.navigationDelegate = self
        self.webki.uiDelegate = self
        activityIndicator.frame=CGRect(x: 0.0,y: 0.0,width: 40.0,height: 40.0)
        activityIndicator.center=webki.center
        activityIndicator.hidesWhenStopped=true
    activityIndicator.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.gray
        view.addSubview(activityIndicator)
        
        let path1=NSURL(fileURLWithPath:Bundle.main.path(forResource:"HELP",ofType:"pdf")!)
        let request1=NSURLRequest(url:path1 as URL)
        webki.load(request1 as URLRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.activityIndicator.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.activityIndicator.stopAnimating()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
