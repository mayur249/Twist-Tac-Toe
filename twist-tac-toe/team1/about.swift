//
//  about.swift
//  team1
//
//  Created by student3 on 10/04/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import WebKit
class about: UIViewController,WKNavigationDelegate,WKUIDelegate
{

    @IBOutlet var web: WKWebView!
    var activityInd:UIActivityIndicatorView=UIActivityIndicatorView()
    override func viewDidLoad() {
        self.web.navigationDelegate = self
        self.web.uiDelegate = self
        activityInd.frame=CGRect(x: 0.0,y: 0.0,width: 40.0,height: 40.0)
        activityInd.center=web.center
        activityInd.hidesWhenStopped=true
    activityInd.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.gray
        view.addSubview(activityInd)
        
        let path=NSURL(fileURLWithPath:Bundle.main.path(forResource:"twist13",ofType:"pdf")!)
        let request=NSURLRequest(url:path as URL)
        web.load(request as URLRequest)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.activityInd.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.activityInd.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.activityInd.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
