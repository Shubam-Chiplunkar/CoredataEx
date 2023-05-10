//
//  ViewController.swift
//  CoreDataEx
//
//  Created by mayank ranka on 09/05/23.
//

import UIKit

class ViewController: UIViewController, dataDidPass {
    
    
    
    @IBOutlet weak var nameText     : UITextField!
    @IBOutlet weak var addressText  : UITextField!
    @IBOutlet weak var mobileText   : UITextField!
    @IBOutlet weak var cityText     : UITextField!
    var i : Int = 0
    var isUpdate = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func saveBut(_ sender: Any) {
        
        let dictData = ["name":nameText.text, "address":addressText.text ,"city":cityText.text ,"mobile":mobileText.text]
        if isUpdate{
            DBHelper.sharedInstance.editData(object: dictData as! [String : String], index: i)
        }else{
            DBHelper.sharedInstance.saveData(object: dictData as! [String : String])
        }
    }
    
    @IBAction func getBut(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "ListViewController") as! ListViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }

    func dataPassed(object: [String : String], index: Int, isEdit: Bool) {
        nameText.text = object["name"]
        addressText.text = object["address"]
        mobileText.text = object["mobile"]
        cityText.text = object["city"]
        i = index
        isUpdate = isEdit
    }
}

