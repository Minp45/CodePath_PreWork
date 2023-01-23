//
//  NewViewController.swift
//  Hello World
//
//  Created by Min Pan on 1/23/23.
//

import UIKit

class NewViewController: UIViewController {

    @IBAction func footballDidTap(_ sender: UIButton) {
        showAlert(message: "football")
    }
    @IBAction func soccerDidTap(_ sender: UIButton) {
        showAlert(message: "soccer")
    }
    @IBAction func tennisDidTap(_ sender: UIButton) {
        showAlert(message: "tennis")
    }
    @IBAction func basketballDidTap(_ sender: UIButton) {
        showAlert(message: "basketball")
    }
    @IBAction func noneDidTap(_ sender: UIButton) {
        let noneMessage = "Unfortunately none of the activity we provided is to your liking"
        let noneAlert = UIAlertController(title: "Hobby", message: noneMessage , preferredStyle: .alert)
        let noneAction = UIAlertAction(title: "Nay", style: .default, handler: nil)
        noneAlert.addAction(noneAction)
        present(noneAlert, animated: true, completion: nil)
    }
    
    func showAlert(message: String){
        let greeting = "It looks like you will be having interest in \(message). "
        let alert = UIAlertController(title: "Hobby", message: greeting, preferredStyle: .alert)
        let newAction = UIAlertAction(title: "Yay!", style: .default, handler: nil)
        alert.addAction(newAction)
        present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
