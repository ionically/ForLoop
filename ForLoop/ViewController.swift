//
//  ViewController.swift
//  ForLoop
//
//  Created by chandni chaudhari on 03/03/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var num: String = "chandni"
    var arry = ["I am a girl My name is chandni","I am a girl My name is chandni","I am a girl My name is chandni"]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func buttonAction(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self // row
        //tableView.separatorColor = .clear
        tableView.backgroundColor = .white
       
        show()
        // Do any additional setup after loading the view.
    }
    func show() {
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

            // Configure YourCustomCell using the outlets that you've defined.
        cell.label1.text = arry[indexPath.row]
        cell.selectionStyle = UITableViewCell.SelectionStyle.none;
            return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arry.count
    }
}
class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var label1: UILabel!
    
    
}
