//
//  ListViewController.swift
//  CoreDataEx
//
//  Created by mayank ranka on 10/05/23.
//

import UIKit
protocol dataDidPass{
    func dataPassed(object: [String : String], index: Int, isEdit: Bool)
}
class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    //    var tableview : UITableView!
    var student   = [Student]()
    var delegate : dataDidPass!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        student = DBHelper.sharedInstance.getData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableCell
        //        cell.loadCell()
//        cell.nameLabel.text = student[indexPath.row].name
//        cell.addressLabel.text = student[indexPath.row].address
//        cell.cityLabel.text = student[indexPath.row].city
//        cell.mobileLabel.text = student[indexPath.row].mobile
        cell.student = student[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            student = DBHelper.sharedInstance.deleteData(index: indexPath.row)
            tableview.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dict = ["name":student[indexPath.row].name,"address":student[indexPath.row].address,"city":student[indexPath.row].city,"mobile":student[indexPath.row].mobile]
        delegate.dataPassed(object: dict as! [String:String], index: indexPath.row, isEdit: true)
        self.navigationController?.popViewController(animated: true)
    }
    
}


//        loadtableview()
//        tableview.delegate = self
//        tableview.dataSource = self
//        tableview.register(CustomTableCell.self, forCellReuseIdentifier: "cell")


//    func loadtableview(){
//        if tableview == nil{
//            tableview = UITableView()
//            tableview.translatesAutoresizingMaskIntoConstraints = false
//            tableview.register(CustomTableCell.self, forCellReuseIdentifier: "cell")
//            tableview.dataSource = self
//            tableview.delegate = self
//            view.addSubview(tableview)
//
//            NSLayoutConstraint.activate([
//                tableview.topAnchor.constraint(equalTo: view.topAnchor),
//                tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//                tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//                tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            ])
//        }
//    }
//
