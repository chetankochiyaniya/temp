//
//  PhototViewController.swift
//  project180622
//
//  Created by Student on 20/07/22.
//

import UIKit

class PhototViewController: UIViewController {

    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let imgUrl = URL(string: "https://images-platform.99static.com//FhX07k9WWQOI3BFd-ubeYa-puMk=/1164x175:1823x835/fit-in/500x500/projects-files/99/9974/997404/9f6650b0-d658-4236-86e6-1c7840bca2b8.jpg")
        // Do any additional setup after loading the view.
        let idata = try! Data(contentsOf: imgUrl!)
        
        myImage.image = UIImage (data: idata)
        
        myImage.layer.cornerRadius=myImage.bounds.height/2
        
        myImage.layer.borderWidth=10
        myImage.layer.borderColor=CGColor(red: 255/255, green:
        255/255,
        blue: 255/255,alpha: 1)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
