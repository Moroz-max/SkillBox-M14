//
//  ViewController.swift
//  practice14module
//
//  Created by Максим Морозов on 14.12.2023.
//

import UIKit

class Task1ViewController: UIViewController {
    
    let cellIdentifier = "task1cell"

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = false
        return tableView
    }()
    
    let countriesArray: [Task1ViewModel] = [
        Task1ViewModel(title: ConstantsTask1.names.Austria, image: ConstantsTask1.images.Austria ?? UIImage()),
        Task1ViewModel(title: ConstantsTask1.names.Belgium, image: ConstantsTask1.images.Belgium ?? UIImage()),
        Task1ViewModel(title: ConstantsTask1.names.France, image: ConstantsTask1.images.France ?? UIImage()),
        Task1ViewModel(title: ConstantsTask1.names.Germany, image: ConstantsTask1.images.Germany ?? UIImage()),
        Task1ViewModel(title: ConstantsTask1.names.Greece, image: ConstantsTask1.images.Greece ?? UIImage())
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib.init(nibName: "Task1Cell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.addSubview(tableView)
    }

    private func setupConstraints() {
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }
    
}

extension Task1ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? Task1Cell
        let viewModel = countriesArray[indexPath.row]
        cell?.countryImageView.image = viewModel.image
        cell?.countryNameLabel.text = viewModel.title
        return cell ?? UITableViewCell()
    }
    
    
}

extension Task1ViewController: UITableViewDelegate {
    
}
