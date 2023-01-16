//
//  FFHeaderStartMainView.swift
//  FastFeet
//
//  Created by Grazi  Berti on 16/01/23.
//

import UIKit

class FFHeaderStartMainView: UIView {
    //MARK: - Variable
    var firtsTitleL: String = ""
    var secondTitleL: String = ""
    var descriptionTextL: String = ""
    
    //MARK: - UI
    fileprivate let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .backgroundColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let transparentWingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image_logotype")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.alpha = 0.7
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let yeallowWingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logotype")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let logoFastFeetImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate let firtsTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.yellowFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let secondTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.whiteFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    fileprivate let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.backgroundLightColor
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init
    init(firtsTitle: String, secondTitle: String, descriptionText: String) {
        let frame = CGRect.zero
        self.firtsTitleL = firtsTitle
        self.secondTitleL = secondTitle
        self.descriptionTextL = descriptionText
        super.init(frame: frame)
        setupLauout()
        setupLauoutConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLauout() {
        firtsTitleLabel.text = firtsTitleL
        secondTitleLabel.text = secondTitleL
        descriptionLabel.text = descriptionTextL
        
        addSubview(containerView)
        containerView.addSubview(transparentWingImageView)
        containerView.addSubview(yeallowWingImageView)
        containerView.addSubview(logoFastFeetImageView)
        containerView.addSubview(firtsTitleLabel)
        containerView.addSubview(secondTitleLabel)
        containerView.addSubview(descriptionLabel)
    }
    
    private func setupLauoutConstrains() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            containerView.heightAnchor.constraint(equalToConstant: 400),
            
            transparentWingImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0),
            transparentWingImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0),
            transparentWingImageView.heightAnchor.constraint(equalToConstant: 287),
            
            yeallowWingImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 56),
            yeallowWingImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 52),
            yeallowWingImageView.heightAnchor.constraint(equalToConstant: 40),
            
            logoFastFeetImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 60),
            logoFastFeetImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            logoFastFeetImageView.heightAnchor.constraint(equalToConstant: 24),
            
            firtsTitleLabel.topAnchor.constraint(equalTo: yeallowWingImageView.bottomAnchor, constant: 42),
            firtsTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            
            secondTitleLabel.topAnchor.constraint(equalTo: firtsTitleLabel.topAnchor, constant: 50),
            secondTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            
            descriptionLabel.topAnchor.constraint(equalTo: secondTitleLabel.bottomAnchor, constant: 32),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
        ])
    }
}
