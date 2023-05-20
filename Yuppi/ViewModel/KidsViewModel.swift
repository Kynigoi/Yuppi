//
//  Activity_view_model.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import Foundation
import CoreData
    
    class KidsViewModel: ObservableObject{
        
        static let shared2 = KidsViewModel()
        
        let container: NSPersistentContainer
        @Published var savedKids: [Kid] = []
        
        init(){
            container = NSPersistentContainer(name: "ActivityDatabase1")
            container.loadPersistentStores{ (description, error) in
                if let error = error{
                    print("Error loading core data. \(error)")
                }
            }
            container.viewContext.automaticallyMergesChangesFromParent = true
           // addBasicKids()
            fetchKids()
        }
            
        
        func fetchKids() {
            let request = NSFetchRequest<Kid>(entityName: "Kid")
            
            do{
                savedKids = try container.viewContext.fetch(request)
            } catch let error {
                print("Error fetching. \(error)")
            }
        }
        
        func addKid(name: String, surname: String, age: Int, sociality: Int,
                    fun: Int, attentionSpan: Int, sportivity: Int, notes: String
        ) {
            let newKid = Kid(context: container.viewContext)
            newKid.name = name
            newKid.surname = surname
            newKid.age = Int16(age)
            newKid.sociality = Int16(sociality)
            newKid.fun = Int16(fun)
            newKid.atttentionSpan = Int16(attentionSpan)
            newKid.sportivity = Int16(sportivity)
            newKid.notes = notes
            saveData()
            
        }
       
        func saveData() {
            do {
                try container.viewContext.save()
                    fetchKids()
            } catch let error {
                print("Error saving. \(error)")
            }
        }
        
        func isKidExistent(name: String) -> Bool{
            var temp: [Kid] = []
            
            let request = NSFetchRequest<Kid>(entityName: "Kid")
            request.predicate = NSPredicate(
                format: "name LIKE %@", name
            )
            do{
                temp = try container.viewContext.fetch(request)
            } catch let error {
                print("Error fetching. \(error)")
            }
            return !temp.isEmpty
        }
        
        func addBasicKids(){
            
        }
    }
    

