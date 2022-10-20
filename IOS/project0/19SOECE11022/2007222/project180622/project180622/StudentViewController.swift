//
//  StudentViewController.swift
//  project180622
//
//  Created by Student on 18/07/22.
//

import UIKit

class StudentViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource{

    let student = ["Chetan Kochiyaniya","Vishva Chudasama" , "Harsh Ved" , "Doremon Future", "Parth Parmar"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create and difine cell
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "studentCell")
        
        cell.textLabel?.text = student[indexPath.row]
        
        //for circle radius
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 15
        
        return cell
    }
    
    var count=0
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        let selected = student[indexPath.row]
        
        let alert = UIAlertController(title: "Student List", message: "you have selected \(selected)", preferredStyle: .alert)
        print(indexPath.row)
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        if (count==0){
            tableView.cellForRow(at:indexPath)?.backgroundColor = .green
            count=1;
            
        }
        else{
            tableView.cellForRow(at:indexPath)?.backgroundColor = .white
        }
        
        
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
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
