//
//  HomeViewController.swift
//  gps-tracking
//
//  Created by Moises Sancheza on 22/02/23.
//

import UIKit

enum ProviderType: String {
    case basic
}

class HomeViewController: UIViewController {

    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var providerLabel: UILabel!
    @IBOutlet var closeSessionButton: UIButton!
    var email: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Inicio"
        // Do any additional setup after loading the view.
        emailLabel.text = email
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
