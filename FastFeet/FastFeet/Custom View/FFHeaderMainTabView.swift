//
//  FFHeaderMainTabView.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import Foundation
import UIKit

class FFHeaderMainTabView: UIView {
    //MARK: - UI
    fileprivate let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let deliveredTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Entregas"
        label.textColor = .whiteFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let iconLocalizedImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "globe")
        imageView.tintColor = .yellowFastFeetColor
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let localizedAddressLabel: UILabel = {
        let label = UILabel()
        label.text = "Rio do Sul"
        label.textColor = .backgroundLightColor
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    init() {
        let frame = CGRect.zero
        super.init(frame: frame)
        setupLauout()
        setupLauoutConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupLauout() {
        addSubview(containerView)
        containerView.addSubview(deliveredTitleLabel)
        containerView.addSubview(iconLocalizedImageView)
        containerView.addSubview(localizedAddressLabel)
    }
    
    fileprivate func setupLauoutConstrains() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            
            deliveredTitleLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 0),
            deliveredTitleLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0),
            deliveredTitleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24),
            deliveredTitleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            
            iconLocalizedImageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0),
            iconLocalizedImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24),
            iconLocalizedImageView.trailingAnchor.constraint(equalTo: localizedAddressLabel.leadingAnchor, constant: -4),
            
            localizedAddressLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor, constant: 0),
            localizedAddressLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24),
            localizedAddressLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -32),
        ])
    }
}
