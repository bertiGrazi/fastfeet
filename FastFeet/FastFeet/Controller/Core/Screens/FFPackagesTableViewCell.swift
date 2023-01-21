//
//  FFPackagesTableViewCell.swift
//  FastFeet
//
//  Created by Grazi  Berti on 21/01/23.
//

import Foundation
import UIKit

class FFPackagesTableViewCell: UITableViewCell {
    static let identifier: String = "FFPackagesTableViewCell"
    
    private lazy var mainStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        [textStackView].forEach { view in
            stack.addArrangedSubview(view)
        }
        stack.distribution = .init(rawValue: 200)!
        stack.spacing = 20
        stack.alignment = .center
        stack.backgroundColor = .blue
        return stack
    }()
    
    private lazy var textStackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        [packagesIdLabel].forEach { view in
            stack.addArrangedSubview(view)
        }
        stack.distribution = .fill
        stack.spacing = 8
        stack.backgroundColor = .systemRed
        return stack
    }()
    
    fileprivate let packagesIdLabel: UILabel = {
        let label = UILabel()
        label.textColor = .titleTextFastFeetColor
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        contentView.backgroundColor = .white
        
        setupView()
        setupConstains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(mainStackView)
    }
    
    fileprivate func setupConstains() {
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            mainStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 28),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -28),
        ])
    }
    
    public func configCell(with data: FFPackageDataSource) {
        packagesIdLabel.text = "Pacote \(String(describing: data.id))"
    }
}
