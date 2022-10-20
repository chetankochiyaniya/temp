//
//  StudentViewController.swift
//  project180622
//
//  Created by Student on 18/07/22.
//

import UIKit

class PlayerViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{
    
//    let student = ["Chetan","Vishvaraj" , "Harsh" , "Doremon", "Parth"]
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return student.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        //create and difine cell
//        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "playerCell")
//
//        cell.clipsToBounds = true
//        cell.layer.cornerRadius = 15
//
//        cell.textLabel?.text = student[indexPath.row]
//
//        return cell
//    }
//

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImage.image = UIImage()
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
