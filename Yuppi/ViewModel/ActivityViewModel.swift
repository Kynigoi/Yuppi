//
//  Activity_view_model.swift
//  Revenge-Boom
//
//  Created by Giovanni Maresca on 24/10/22.
//

import Foundation
import CoreData
    
    class ActivityViewModel: ObservableObject{
        
        static let shared = ActivityViewModel()
        
        let container: NSPersistentContainer
        @Published var savedActivities: [ActivityCard] = []
        @Published var basicActivities: [ActivityCard] = []

        
        init(){
            container = NSPersistentContainer(name: "ActivityDatabase1")
            container.loadPersistentStores{ (description, error) in
                if let error = error{
                    print("Error loading core data. \(error)")
                }
            }
            container.viewContext.automaticallyMergesChangesFromParent = true
            addBasicActivities()
            fetchBasicActivity()
            fetchActivity()
        }
            
        
        func fetchActivity() {
            let request = NSFetchRequest<ActivityCard>(entityName: "ActivityCard")
            
            do{
                savedActivities = try container.viewContext.fetch(request)
            } catch let error {
                print("Error fetching. \(error)")
            }
        }
        
        func fetchBasicActivity() {
            let request = NSFetchRequest<ActivityCard>(entityName: "ActivityCard")
            
            do{
                basicActivities = try container.viewContext.fetch(request)
               /* for i in 14...basicActivities.count - 1 {
                    basicActivities.remove(at: i)
                }*/
            } catch let error {
                print("Error fetching. \(error)")
            }
        }

        
        func addActivity(name: String, numberOfParticipants: Int, requiredObjects: String,descriptionActivity: String, image: String, colorCard: String
        ) {
            if(!isActivityExistent(name: name)){
            let newActivity = ActivityCard(context: container.viewContext)
            newActivity.name = name
            newActivity.numberOfParticipants = Int16(numberOfParticipants)
            newActivity.requiredObjects = requiredObjects
            newActivity.descriptionActivity = descriptionActivity
            newActivity.image = image
            newActivity.cardColor = colorCard
            saveData()
            }
        }
        
        func deleteActivity(activityToDelete: ActivityCard) {
            container.viewContext.delete(activityToDelete)
            saveData()
        }
       
        func saveData() {
            do {
                try container.viewContext.save()
                    fetchActivity()
            } catch let error {
                print("Error saving. \(error)")
            }
        }
        
        func isActivityExistent(name: String) -> Bool{
            var temp: [ActivityCard] = []
            
            let request = NSFetchRequest<ActivityCard>(entityName: "ActivityCard")
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
        
        func addBasicActivities(){
            
            // Solo activities
            addActivity(
                name: "Bike Ride",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "bicycle",
                colorCard: "blue")
            
            addActivity(
                name: "Swimming",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.pool.swim",
                colorCard: "green")
            
            addActivity(
                name: "Hopsnotch",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "bell",
                colorCard: "red")
            
            addActivity(
                name: "Running",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.run",
                colorCard: "yellow")
            
            addActivity(
                name: "Skating",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.skating",
                colorCard: "orange")
            
            addActivity(
                name: "Jump Rope",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.jumprope",
                colorCard: "green")
            
            addActivity(
                name: "Warm-Up",
                numberOfParticipants: 1,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.cooldown",
                colorCard: "pink")
            
            
            // Group activities
            addActivity(
                name: "Dodgeball",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "volleyball",
                colorCard: "pink")
            
            addActivity(
                name: "Baseball",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.baseball",
                colorCard: "green")
            
            addActivity(
                name: "Dancing",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.socialdance",
                colorCard: "orange")

            addActivity(
                name: "Soccer",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "soccerball",
                colorCard: "yellow")

            addActivity(
                name: "Twister",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.wrestling",
                colorCard: "blue")

            addActivity(
                name: "Basketball",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.basketball",
                colorCard: "red")

            addActivity(
                name: "WarmUp",
                numberOfParticipants: 2,
                requiredObjects: "",
                descriptionActivity: "",
                image: "figure.cooldown",
                colorCard: "gray")
        }
    }
    

