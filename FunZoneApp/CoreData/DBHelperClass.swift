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
    static var flag : Bool = false
    
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
            print(error.localizedDescription)
        }
    }
    
    func addNote(title: String, description: String, body: String) -> Bool {
        
        var status = false
        
        // check if note with same title already exists
        if (DBHelperClass.dbHelper.getNote(title: title)) {
            return status
        }
        
        // create new note
        let note = NSEntityDescription.insertNewObject(forEntityName: "Note", into: context!) as! Note
        
        note.title = title
        note.desc = description
        note.body = body
        
        do {
            try context?.save()
            status = true
            print("data saved successfully")
            
        } catch {
            print("data save unsuccessful")
            print(error.localizedDescription)
        }
        
        return status
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
    
    func getUser(email: String) throws -> User {
        var user = User()
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "email == %@", email)
        
        fetchRequest.fetchLimit = 1
            let request = try context?.fetch(fetchRequest) as! [User]
            if (request.count != 0) {
                user = request.first!
                DBHelperClass.flag = true
            } else {
                DBHelperClass.flag = false
                throw LoginErrors.userNotFound
            }
        
        return user
        
    }
    
    func getNote(title: String) -> Bool {
        var status = false
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
        fetchRequest.predicate = NSPredicate(format: "title == %@", title)
        
        fetchRequest.fetchLimit = 1
        do {
            let request = try context?.fetch(fetchRequest) as! [Note]
            if (request.count != 0) {
                status = true
            }
        } catch {
            print("Error detected trying to get note")
        }
        
        return status
    }
    
    
    
    func getNotes() -> [Note] {
        var notes = [Note]()
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
        
        do {
            notes = try context?.fetch(fetchRequest) as! [Note]
        } catch {
            print("can not fetch data")
        }
        
        return notes
        
    }
    
    
    
    func userExists(email: String) -> Bool {
        
        var status = false
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        fetchRequest.predicate = NSPredicate(format: "email == %@", email)
        
        fetchRequest.fetchLimit = 1
        do {
            let request = try context?.fetch(fetchRequest) as! [User]
            if (request.count != 0) {
                //                user = request.first!
                status = true
            } else {
                print("No student found")
            }
        } catch {
            print("Error detected")
        }
        
        return status
        
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
    
    func updateNote(title: String, body: String) -> Bool {
        var status = false
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
        fetchRequest.predicate = NSPredicate(format: "title == %@", title)
        
        do {
            let notes = try context?.fetch(fetchRequest) as! [Note]
            if (notes.count != 0) {
                let note = notes.first!
                note.body = body
                try context?.save()
                status = true
                print("data update successfully")
            }
        } catch {
            print("Error detected")
        }
        
        return status
    }
    
    func deleteUser(email: String) {
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
    
    func deleteNote(title: String) -> Bool {
        var status = false
        
        
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Note")
        fetchRequest.predicate = NSPredicate(format: "title == %@", title)
        
        do {
            let notes = try context?.fetch(fetchRequest) as! [Note]
            if (notes.count != 0 ) {
                context?.delete(notes.first!)
                try context?.save()
                status = true
            }
        } catch {
            print(error)
        }
        
        return status
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
