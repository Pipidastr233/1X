//
//  LoginViewController.swift
//  smartHouseTV
//
//  Created by user on 16.06.2022.
//

import UIKit

class LoginViewController: UIViewController {

    // Ссылка на LoginView
    let loginView = LoginView()
    
    // Ссылка на элементы
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgrounLoginView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.setupBackgroundForImageView(view: backgroundImageView)
        
        backgrounLoginView.layer.cornerRadius = 20
        loginButton.layer.cornerRadius = 20
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        if emailTextField.text?.isEmpty == true && passwordTextField.text?.isEmpty == true {
            showAlert(title: "Ошибка", description: "Вы не ввели email и password.")
        } else if emailTextField.text?.isEmpty == true {
            showAlert(title: "Ошибка", description: "Вы не ввели email.")
        } else if passwordTextField.text?.isEmpty == true {
            showAlert(title: "Ошибка", description: "Вы не ввели password.")
        } else {
            performSegue(withIdentifier: "goToMainSegue", sender: self)
        }
    }
    
    // Функция показа всплывающего окна
    func showAlert(title: String, description: String) {
        let alert = UIAlertController(title: title, message: description, preferredStyle: .alert)
        let close = UIAlertAction(title: "Закрыть", style: .cancel, handler: nil)
        alert.addAction(close)
        present(alert, animated: true, completion: nil)
    }

}
