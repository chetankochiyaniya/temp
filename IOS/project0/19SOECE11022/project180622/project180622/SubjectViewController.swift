//
//  StudentViewController.swift
//  project180622
//
//  Created by Student on 18/07/22.
//

import UIKit

class SubjectViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
    let subject = ["IOS Devlopment","React js " , "Python Devlopment " , "Blockchain Devlopment", "Node js"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return subject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create and difine cell
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "subjectCell")
        //for circle radius
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 15
        
        cell.textLabel?.text = subject[indexPath.row]
        
        return cell
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
