//
//  AddActivityViewController.swift
//  FitLog2
//
//  Created by Joshua Mburu on 8/12/25.
//

import UIKit
protocol AddActivityDelegate: AnyObject {
    func didCreateActivity(_ activity: Activity)
}

class AddActivityViewController: UIViewController {
    weak var delegate: AddActivityDelegate?


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // 1. Get the name from the text field
        let name = nameTextField.text ?? ""
        
        // 2. Get the duration, converting the text to an Int
        let duration = Int(durationTextField.text ?? "0") ?? 0
        
        // 3. Get the date from the date picker
        let date = datePicker.date
        
        // 4. Create a new Activity object
        let newActivity = Activity(name: name, duration: duration, steps: nil, date: date)
        delegate?.didCreateActivity(newActivity)
        dismiss(animated: true, completion: nil)
        
  
        print("New Activity Saved: \(newActivity.name), Duration: \(newActivity.duration) mins")
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
