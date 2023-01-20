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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    //MARK: - Livecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .backgroundColor
        
        view.addSubview(scrollView)
        scrollView.addSubview(viewContainerBody)
        viewContainerBody.addSubview(tableView)
        
        tableView.dataSource = self
        
        viewModel.fetch(.alamofireRequest)
        
        setupLayoutConstrains()
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
            
            tableView.topAnchor.constraint(equalTo: viewContainerBody.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: viewContainerBody.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: viewContainerBody.trailingAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: viewContainerBody.bottomAnchor, constant: 0),
            tableView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height)
        ])
    }
}

extension FFPendingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 100
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
           cell.textLabel?.text = "Hello"
           cell.textLabel?.textColor = .black
           cell.backgroundColor = .backgroundLightColor
           return cell
       }
}
