//
//  ViewController.swift
//  FastFeet
//
//  Created by Grazi  Berti on 07/01/23.
//

import UIKit

class FFLoginViewController: UIViewController {
    //MARK: - Variable
    
    //MARK: - UI
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .backgroundColor
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let headerMainView = FFHeaderStartMainView(
        firtsTitle: "Entregador,\n",
        secondTitle: "você é nosso\nmaior valor",
        descriptionText: "Faça seu login para\ncomeçar suas entregas"
    )
    
    fileprivate let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let cpfTextField: UITextField = {
        let textField = Utilities().textField(withPlaceholder: " CPF")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let passwordTextField: UITextField = {
        let textField = Utilities().textField(withPlaceholder: " Senha")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    fileprivate let forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Esqueci minha senha", for: .normal)
        button.setTitleColor(UIColor.backgroundLightColor, for: .normal)
        button.backgroundColor = UIColor.backgroundColor
        button.addTarget(nil, action: #selector(goToForgotMyPasswordView), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    fileprivate let signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(UIColor.baseTextFastFeetColor, for: .normal)
        button.backgroundColor = UIColor.yellowFastFeetColor
        button.layer.cornerRadius = 8
        button.addTarget(nil, action: #selector(goToMainScreen), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Lyvecicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setupLayoutViews()
    }
    
    private func setupLayoutViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(headerMainView)
        scrollView.addSubview(inputsContainerView)
        inputsContainerView.addSubview(cpfTextField)
        inputsContainerView.addSubview(passwordTextField)
        inputsContainerView.addSubview(forgotPasswordButton)
        inputsContainerView.addSubview(signInButton)
        setupLayoutConstrains()
    }
    
    private func setupLayoutConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            stackView.topAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            
            inputsContainerView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 400),
            inputsContainerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            inputsContainerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            inputsContainerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            inputsContainerView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            inputsContainerView.heightAnchor.constraint(equalToConstant: 250),
            
            cpfTextField.topAnchor.constraint(equalTo: inputsContainerView.topAnchor, constant: 0),
            cpfTextField.leadingAnchor.constraint(equalTo: inputsContainerView.leadingAnchor, constant: 20),
            cpfTextField.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -20),
            cpfTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            cpfTextField.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width <= 375 ? 46: 56),
            
            passwordTextField.topAnchor.constraint(equalTo: cpfTextField.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: inputsContainerView.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -20),
            passwordTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            passwordTextField.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width <= 375 ? 46: 56),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -24),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 25),
            
            signInButton.topAnchor.constraint(equalTo: forgotPasswordButton.bottomAnchor, constant: 20),
            signInButton.leadingAnchor.constraint(equalTo: inputsContainerView.leadingAnchor, constant: 20),
            signInButton.trailingAnchor.constraint(equalTo: inputsContainerView.trailingAnchor, constant: -20),
            signInButton.heightAnchor.constraint(equalToConstant: 56),
        ])
    }
    
    @objc
    func goToForgotMyPasswordView() {
        print(#function)
    }
    
    @objc
    func goToMainScreen() {
        print(#function)
    }
}
