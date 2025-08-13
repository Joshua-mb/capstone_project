//
//  HomeViewController.swift
//  FitLog2
//
//  Created by Joshua Mburu on 8/12/25.
//

import UIKit

// Make the class conform to our custom delegate protocol
class HomeViewController: UIViewController, AddActivityDelegate {

    @IBOutlet weak var tableView: UITableView!
    // This array acts as your temporary database
    var loggedActivities: [Activity] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // You can add sample data here to test your UI later
        loggedActivities = [
            Activity(name: "Morning Walk", duration: 30, steps: 3500, date: Date()),
        ]
    }
    
    // This function is called right before the segue to the AddActivityViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check that its are moving to the correct screen
        if let destinationVC = segue.destination as? AddActivityViewController {
            // Set this HomeViewController as the delegate for the next screen
            destinationVC.delegate = self
        }
    }

    // This is the required delegate function that receives the new activity
    func didCreateActivity(_ activity: Activity) {
        // Add the newly created activity from the other screen to the array
        loggedActivities.append(activity)
        
        // Print to the console to confirm it received it
        print("✅ Received and added new activity: \(activity.name)")
        print("Total activities: \(loggedActivities.count)")
    }
}

extension HomeViewController: UITableViewDataSource {

    // 1. This function tells the table view HOW MANY rows to create.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // We need one row for every activity in our array.
        return loggedActivities.count
    }

    // 2. This function configures WHAT to put in each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get a reusable cell. For this to work, you must set the "Identifier"
        // of the prototype cell in your storyboard to "ActivityCell".
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath)
        
        // Get the specific activity for this row
        let activity = loggedActivities[indexPath.row]
        
        // Configure the cell's text
        cell.textLabel?.text = activity.name
        cell.detailTextLabel?.text = "Duration: \(activity.duration) mins"
        
        return cell
    }
}
