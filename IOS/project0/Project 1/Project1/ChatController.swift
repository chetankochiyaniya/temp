//
//  ChatController.swift
//  Project 1
//
//  Created by Student on 11/07/22.
//

import UIKit

class ChatController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func StartChatBtn(_ sender: Any) {
    
    let alert = UIAlertController(title: "Project 1", message: "Are you agree with term & condition ?", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "Agree", style: .default, handler: {
        ACTION in
        print("you have click the agree button.")
    }))
    
        alert.addAction(UIAlertAction(title: "Disagree", style: .destructive, handler: {
        ACTION in
        print("you have click the Disagree button.")
    }))

        alert.addAction(UIAlertAction(title: "Skip", style: .default, handler: {
        ACTION in
        print("you have click the skip button.")
    }))
    
    // present
    self.present(alert, animated: true, completion: nil)
    
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
