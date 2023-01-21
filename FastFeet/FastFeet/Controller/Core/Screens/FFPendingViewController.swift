//
//  FFPendingViewController.swift
//  FastFeet
//
//  Created by Grazi  Berti on 18/01/23.
//

import UIKit

class FFPendingViewController: UIViewController {
    //MARK: - Variable
    let viewModel: FFPackagesViewModel = FFPackagesViewModel()
    
    //MARK: - UI
    
    fileprivate let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .backgroundColor
        scrollView.isScrollEnabled = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    fileprivate let viewContainerBody: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .red
        tableView.register(FFPackagesTableViewCell.self, forCellReuseIdentifier: FFPackagesTableViewCell.identifier)
        tableView.separatorStyle = .none
        tableView.backgroundColor = .backgroundLightColor
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - Livecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        
        view.addSubview(tableView)
//        scrollView.addSubview(viewContainerBody)
//        viewContainerBody.addSubview(tableView)

        
        tableView.dataSource = self
        
        viewModel.fetch(.alamofireRequest)
        
        setupLayoutConstrains()
    }
    
    fileprivate func setupLayoutConstrains() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

extension FFPendingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fetchMockListPackages().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FFPackagesTableViewCell.identifier, for: indexPath) as? FFPackagesTableViewCell else { return UITableViewCell()
        }
        cell.configCell(with: viewModel.fetchMockListPackages()[indexPath.row])
        return cell
    }
}
