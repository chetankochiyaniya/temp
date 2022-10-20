//
//  ViewController.swift
//  Demo
//
//  Created by Student on 15/07/22.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate{
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    @IBOutlet weak var mywebview: UIWebView!
    @IBOutlet weak var myweb: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        open_URL(Webaddress: "https://www.hindinsder.com")
        mywebview.delegate = self
        indicator.isHidden = true
    }


    @IBAction func Go(_ sender: Any) {
        open_URL(Webaddress: myweb.text!)
    }
    func open_URL(Webaddress:String) {
        let myURL = URL(string: Webaddress)
        mywebview.loadRequest(URLRequest(url: myURL!))
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicator.isHidden=false
        indicator.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicator.isHidden = true
    }
}

 
