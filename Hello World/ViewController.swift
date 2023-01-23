//
//  ViewController.swift
//  Hello World
//
//  Created by Min Pan on 1/22/23.
//

import UIKit

class ViewController: UIViewController {
    var colorChanged = true

    @IBAction func didTapButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondController = storyboard.instantiateViewController(withIdentifier: "second")
        secondController.loadViewIfNeeded()
        
        self.present(secondController, animated: true, completion: nil)
    }
    
    @IBAction func changeBackGroundColor(_ sender: UIButton) {
        colorChanged = !colorChanged
        if colorChanged{
            let color = UIColor(red: 0.80, green: 0.76, blue: 0.89, alpha: 1.00)
            view.backgroundColor = color
        }
        else{
            view.backgroundColor = .white
        }
    }
    @IBAction func IntroduceSelfDidTap(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegementControl.titleForSegment(at: yearSegementControl.selectedSegmentIndex)
        
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).I am currenly in my \(year!) year and I own \(numberOfPetsLabel.text!) dogs. It is \(morePetSwitch.isOn) that I want more pets."
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        // retrieving a property from the sender
        // initially a double, cast into an Int
        // wrapping our Int in a string for our label
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var morePetSwitch: UISwitch!
    @IBOutlet weak var morePetStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegementControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

