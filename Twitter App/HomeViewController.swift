//
//  HomeViewController.swift
//  Twitter App
//
//  Created by 秋山悠 on 2022/06/10.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var tweetDataList: [TweetDataModel] = []
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.layer.borderColor = UIColor.red.cgColor
        tableView.layer.borderWidth = 2.0
//        tableView.estimatedRowHeight = 66
        tableView.rowHeight = UITableView.automaticDimension
        setTweetData()
    }
    
    func setTweetData() {
        for i in 1...10 {
            let date = Date()
            let formatter = DateFormatter()
            formatter.dateStyle = .full
            formatter.timeStyle = .short
            let tweetDataModel = TweetDataModel(userName: "田中", tweetText: "\(i)番目のツイートです", tweetTime: formatter.string(from: date))
            tweetDataList.append(tweetDataModel)
        }
    }
    
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetDataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let tweetDataModel: TweetDataModel = tweetDataList[indexPath.row]
        cell.textLabel?.text = "\(tweetDataModel.userName)\n\(tweetDataModel.tweetText)"
        cell.detailTextLabel?.text = "\(tweetDataModel.tweetTime)"
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
}

extension HomeViewController: UITableViewDelegate {
    
}
