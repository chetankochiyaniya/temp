//
//  ViewController.swift
//  ApiDog_19soece11022
//
//  Created by Student on 31/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func NextButton(_ sender: Any) {
        showImg()
    }
    
    func showImg(){
        let myURL = URL(string: "https://dog.ceo/api/breeds/image/random")
        
        var myRequest = URLRequest(url: myURL!)
        
        myRequest.httpMethod = "GET"
        
        let task = try! URLSession.shared.dataTask(with: myRequest){
            (mydata, URLResponse, Error) in
            
            let jsonData = try! JSONSerialization.jsonObject(with: mydata!) as! [String:Any]
            let msgData =  jsonData["message"] as! String
            print(mydata)
            
            DispatchQueue.main.async {
                let dogUrl = URL(string: msgData)
                let imgData = try! Data(contentsOf: dogUrl!)
                self.imgView.image = UIImage(data: imgData)
                                        
            }
        }
        
    }
    
}

