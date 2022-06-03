//
//  DBHelperClass.swift
//  CoreDataDemo
//
//  Created by Vincent Salinas on 5/31/22.
//

import Foundation
import UIKit
import CoreData

class DBHelperClass {
    
    static var dbHelper = DBHelperClass()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addUser(email: String, password: String) {
        
        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context!) as! User
        
        user.email = email
        user.password = password
        
        do {
            try context?.save()
            print("data saved successfully")
        } catch {
            print("data save unsuccessful")
        }
    }
    
//    func viewData() -> [Student] {
//        var student = [Student]()
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
//
//        do {
//            student = try context?.fetch(fetchRequest) as! [Student]
//        } catch {
//            print("Fetch request failed")
//        }
//
//        return student
//    }
    
    func getUser(email: String) -> User {
        var user = User()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "email == %@", email)
        
        fetchRequest.fetchLimit = 1
        do {
            let request = try context?.fetch(fetchRequest) as! [User]
            if (request.count != 0) {
                user = request.first!
            } else {
                print("No user found")
            }
        } catch {
            print("Error detected")
        }
        
        return user
    }
    
//    func updateData(textfield1: String, textfield2: String) {
//        var student = Student()
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
//        fetchRequest.predicate = NSPredicate(format: "textfield1 == %@", textfield1)
//
//        do {
//            let stu = try context?.fetch(fetchRequest) as! [Student]
//            if (stu.count != 0) {
//                student = stu.first!
//                student.textfield1 = textfield1
//                try context?.save()
//                print("data update successfully")
//            }
//        } catch {
//            print("Error detected")
//        }
//    }
    
    func deletData(email: String) {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "email == %@", email)
        do {
            let user = try context?.fetch(fetchRequest)
            context?.delete(user?.first as! User)
            try context?.save()
            print("Delete successful")
        } catch {
            print("Error detected")
        }
    }
    
//    func addCollegeData(title: String) {
//        let college = NSEntityDescription.insertNewObject(forEntityName: "College", into: context!) as! College
//
//        college.title = title
//
//        var student = Student()
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
//
//        do {
//            let stu = try context?.fetch(fetchRequest) as! [Student]
//            student = stu.first!
//        } catch {
//            print("can not fetch data")
//        }
//
//        college.student = student
//
//
//
//    }
//
//
//    func getCollegeData() -> [College] {
//        var college = [College]()
//
//        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "College")
//
//        do {
//            college = try context?.fetch(fetchRequest) as! [College]
//        } catch {
//            print("can not fetch data")
//        }
//
//        return college
//
//
//    }
    
    
}