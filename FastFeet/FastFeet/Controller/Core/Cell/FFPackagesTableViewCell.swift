//
//  FFPackagesTableViewCell.swift
//  FastFeet
//
//  Created by Grazi  Berti on 20/01/23.
//

import UIKit

class FFPackagesTableViewCell: UITableViewCell {
    //MARK: - Variable
    static let identifier: String = "FFPackagesTableViewCell"
    
    //MARK: - UI
    fileprivate let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .whiteFastFeetColor
        view.layer.cornerRadius = 8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    fileprivate let packageNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.titleTextFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //MARK: - Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        containerView.backgroundColor = .yellowFastFeetColor
        
        setupView()
        setupConstains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(containerView)
        containerView.addSubview(packageNumberLabel)
    }
    
    fileprivate func setupConstains() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            containerView.widthAnchor.constraint(equalToConstant: 327),
            containerView.heightAnchor.constraint(equalToConstant: 184),
            
            packageNumberLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            packageNumberLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
        ])
    }
    
    public func setupCell(with data: String) {
        packageNumberLabel.text = "Pacote \(data)"
    }
}
