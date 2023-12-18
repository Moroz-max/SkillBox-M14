//
//  Task3DetailViewController.swift
//  practice14module
//
//  Created by Максим Морозов on 16.12.2023.
//

import UIKit

class Task3DetailViewController: UIViewController {

    @IBOutlet weak var descriprionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    
    
    var newsModel = NewsWithLocationModel(name: "", description: "", location: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        descriprionLabel.text = "Description:\n\(newsModel.description)"
        locationLabel.text = "Location:\n\(newsModel.location)"
        
    }
    

    

}
