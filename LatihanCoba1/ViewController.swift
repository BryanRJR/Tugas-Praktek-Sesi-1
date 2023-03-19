//
//  ViewController.swift
//  LatihanCoba1
//
//  Created by MacBook Pro on 17/03/23.
//
// Ini Project Test

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rocketButton: UIButton!
    @IBOutlet weak var engineerButton: UIButton!
    @IBOutlet weak var singerButton: UIButton!
    @IBOutlet weak var astronoutButton: UIButton!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Helpers
    func showAlert(title: String, subtitle: String) {
        let alert = UIAlertController(title: title, message: subtitle, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
        //TODO: Implement alert
    }
    
    // MARK: - Actions
    @IBAction func astronoutButtonTapped(_ sender: Any) {
        showAlert(title: "Your job", subtitle: "Astronout")
    }
    @IBAction func singerButtonTapped(_ sender: Any) {
        showAlert(title: "Your job", subtitle: "Singer")
    }
    @IBAction func engineerButtonTapped(_ sender: Any) {
        showAlert(title: "Your job", subtitle: "Engineer")
    }
    @IBAction func rocketButtonTapped(_ sender: Any) {
        showAlert(title: "Your job", subtitle: "Rocket")
    }
}

