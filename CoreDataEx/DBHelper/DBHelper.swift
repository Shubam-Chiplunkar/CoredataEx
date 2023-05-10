//
//  DBHelper.swift
//  CoreDataEx
//
//  Created by mayank ranka on 10/05/23.
//

import Foundation
import UIKit
import CoreData


class DBHelper{
    static var sharedInstance = DBHelper()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    //Save data
    func saveData(object: [String : String]){
    
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as? Student
        student?.name = object["name"]
        student?.address = object["address"]
        student?.mobile = object["mobile"]
        student?.city = object["city"]
        
        do{
            try context?.save()
        }catch{
            print("Data not saved")
        }
    }
    
    //Get data
    func getData()->[Student]{
        var student = [Student]()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do{
            student = try context?.fetch(fetchRequest) as! [Student]
        }catch{
            print("Data did not fetched")
        }
        
        return student
        
    }
    
    //Delete data
    func deleteData(index: Int)->[Student]{
        var student = getData()
        context?.delete(student[index])
        student.remove(at: index)
        
        do{
            try context?.save()
        }
        catch{
            print("Data is not deleted")
        }
        return student
    }
    
    func editData(object: [String : String], index: Int){
        var student = getData()
        student[index].name = object["name"]
        student[index].address = object["address"]
        student[index].city = object["city"]
        student[index].mobile = object["mobile"]
        
        do {
            try context?.save()
        }catch{
            print("Data not updated")
        }
        
    }
}

