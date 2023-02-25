//
//  ViewController.swift
//  gps-tracking
//
//  Created by Moises Sanchez on 22/02/23.
//

import UIKit
import FirebaseAuth

class AuthViewController: UIViewController {

    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Autenticación"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signUpButtonAction(_ sender: UIButton){
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password){
                (result, error) in
                if let result = result, error == nil{
                    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                    let screen = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
                    screen?.email = email
                    self.navigationController? .pushViewController(screen!, animated: true)                } else {
                    let alertController = UIAlertController(title: "Error", message: "Se ha registrado un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction func logInButtonAction(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password){
                (result, error) in
                if let result = result, error == nil{
                    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                    let screen = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
                    screen?.email = email
                    self.navigationController? .pushViewController(screen!, animated: true)
                } else {
                    let alertController = UIAlertController(title: "Error", message: "Se ha registrado un error registrando el usuario", preferredStyle: .alert)
                    alertController.addAction(UIAlertAction(title: "Aceptar", style: .default))
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
}

