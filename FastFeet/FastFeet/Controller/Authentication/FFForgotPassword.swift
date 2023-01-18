//
//  FFForgotPassword.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import Foundation
import UIKit

class FFForgotPassword: UIViewController {
    //MARK: - Variable
    
    //MARK: - UI
    fileprivate let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .backgroundColor
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let viewContainerBody: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .backgroundColor
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    fileprivate let headerMainView = FFHeaderStartMainView(
        firtsTitle: FFForgotPasswordStrings.forgotPasswordHeaderfirtsTitle.localized(),
        secondTitle: FFForgotPasswordStrings.forgotPasswordHeadersecondTitle.localized(),
        descriptionText: FFForgotPasswordStrings.forgotPasswordHeaderdescriptionText.localized()
    )
    
    fileprivate let addressFastFeetView: UIView = {
        let view = UIView()
        view.backgroundColor = .backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let titleAddressLabel: UILabel = {
        let label = UILabel()
        label.text = FFForgotPasswordStrings.forgotPasswordAddressTitle.localized()
        label.textColor = .whiteFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let addressLabel: UILabel = {
        let label = UILabel()
        label.text = FFForgotPasswordStrings.forgotPasswordAddress.localized()
        label.textColor = .subtitleTextFastFeetColor
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Lyvecicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        
        setupLayoutViews()
        setupLayoutConstrains()
    }
    
    fileprivate func setupLayoutViews() {
        view.addSubview(scrollView)
        scrollView.addSubview(viewContainerBody)
        viewContainerBody.addSubview(stackView)
        stackView.addArrangedSubview(headerMainView)
        viewContainerBody.addSubview(addressFastFeetView)
        addressFastFeetView.addSubview(titleAddressLabel)
        addressFastFeetView.addSubview(addressLabel)
    }
    
    fileprivate func setupLayoutConstrains() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            viewContainerBody.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            viewContainerBody.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            viewContainerBody.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            viewContainerBody.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
//            viewContainerBody.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height - 44.0 - UIApplication.shared.statusBarFrame.height),
            
            stackView.topAnchor.constraint(equalTo: viewContainerBody.safeAreaLayoutGuide.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            stackView.heightAnchor.constraint(equalToConstant: 400),
            
            addressFastFeetView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 0),
            addressFastFeetView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            addressFastFeetView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            addressFastFeetView.heightAnchor.constraint(equalToConstant: 100),
            
            titleAddressLabel.topAnchor.constraint(equalTo: addressFastFeetView.topAnchor, constant: 10),
            titleAddressLabel.leadingAnchor.constraint(equalTo: addressFastFeetView.leadingAnchor, constant: 35),
            
            addressLabel.topAnchor.constraint(equalTo: titleAddressLabel.bottomAnchor, constant: 10),
            addressLabel.leadingAnchor.constraint(equalTo: addressFastFeetView.leadingAnchor, constant: 35),
        ])
    }
}
