//
//  HomeViewController.swift
//  Twitter App
//
//  Created by 秋山悠 on 2022/06/10.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var TweetDisplayArea: UITableView!
    
    let tweet = ["tweet1","tweet2","tweet3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TweetDisplayArea.dataSource = self
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = tweet[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweet.count
    }

    
    
}

extension HomeViewController: UITableViewDelegate {
    
}
