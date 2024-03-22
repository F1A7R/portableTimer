//
//  ViewController.swift
//  myApp
//
//  Created by 손한솔 on 3/19/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    let entityName: String = "Locations"
    
    static let context: NSManagedObjectContext? = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            print("AppDelegate not initialized!")
            return nil
        }
        return appDelegate.persistentContainer.viewContext
    }()
    
    @IBOutlet var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func testButton(_ sender: Any) {
        guard let context = ViewController.context else { return }
        guard let entity = NSEntityDescription.entity(
            forEntityName: entityName, in: context
        ) else { return }
        let object = NSManagedObject(entity: entity, insertInto: context)
                object.setValue("3호선", forKey: "metroNum")
                object.setValue("주엽역", forKey: "metroStart")
                object.setValue("충무로역", forKey: "metroEnd")
        do {
            try context.save()
            print(object)
        } catch {
            print("error: \(error.localizedDescription)")
        }
    }
    
    @IBAction func loadBtn(_ sender: Any) {
        guard let context = ViewController.context else { return }
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: entityName)
        do {
            guard let myLocations = try context.fetch(fetchRequest) as? [Locations] else { return }
            myLocations.forEach {
                testLabel.text = $0.metroNum
            }
        } catch {
            print("error: \(error.localizedDescription)")
        }
    }
    

}

