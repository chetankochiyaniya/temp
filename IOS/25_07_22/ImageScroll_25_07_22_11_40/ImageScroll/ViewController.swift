//
//  ViewController.swift
//  ImageScroll
//
//  Created by Student on 25/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImgView: UIImageView!
    
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipe1 = UISwipeGestureRecognizer(target: self, action: #selector(leftSwipe(_sender:)))
        swipe1.direction = .left
        view.addGestureRecognizer(swipe1)
        
        let swipe2 = UISwipeGestureRecognizer(target: self, action: #selector(rightSwipe(_sender:)))
        
        swipe2.direction = .right
        view.addGestureRecognizer(swipe2)
    
        myImgView.image = UIImage(named: "1.jpg")
    }
    

    
    @objc func leftSwipe (_sender:UISwipeGestureRecognizer){
        if count<7 {
        print("swipped at left side")
              count = count + 1
              myImgView.image = UIImage(named: "\(count).jpg")
                
              print("image\(count).jpg")
            
        }else{
            count = 1
            myImgView.image = UIImage(named: "\(count).jpg")
            
        }
              
    }
    
    @objc func rightSwipe (_sender:UISwipeGestureRecognizer){
        if count>=2{
        print("swipped at right side")
            
              count = count - 1
              myImgView.image = UIImage(named: "\(count).jpg")
                
            print("image\(count).jpg")
        }else{
            count = 7
            myImgView.image = UIImage(named: "\(count).jpg")
        }
          
        
              
    }


}

