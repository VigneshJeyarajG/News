//
//  ViewController.swift
//  Devskiller
//
//  Created by Ivo Silva on 18/09/2020.
//  Copyright © 2020 Mindera. All rights reserved.
//

import UIKit
import DropDown

class LaunchViewController: UIViewController {
    
    @IBOutlet weak var newsTableView: UITableView!
    let refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        registerNib()
        newsAPI()
        pullToRefresh()
    }
    
    func pullToRefresh() {
        refreshControl.attributedTitle = NSAttributedString(string: "")
        refreshControl.addTarget(self, action: #selector(self.newsAPI), for: .valueChanged)
        newsTableView.addSubview(refreshControl)
    }
    
    @objc func refresh(_ sender: AnyObject) {
       // Code to refresh table view
    }
    
    func registerNib() {
        newsTableView.register(NewsListTableViewCell.self)
    }
    
    @objc func newsAPI() {
        refreshControl.endRefreshing()
        LoadingUtils.shared.showActivityIndicator(self.view)
        APIClient.shared.getNews() { (Success, error) in
            LoadingUtils.shared.hideActivityIndicator(self.view)
            if Success {
                self.displayData()
            } else if let error = error {
                self.alert(title: "Message", message: error.localizedDescription, cancel: "ok")
            }
        }
    }
    
    func displayData() {
        
        if NewsArray.info.count != 0 {
            newsTableView.reloadData()
            newsTableView.isHidden = false
        } else {
            newsTableView.isHidden = true
        }
    }
}


extension LaunchViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NewsArray.info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newsTableView.dequeueReusableCell(for: indexPath) as NewsListTableViewCell
        cell.setCell(index: indexPath.row)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NewsArray.detail = NewsArray.info[indexPath.row]
        navigationPushRedirect(storyBoardName: "Main", storyBoardId: "NewsDetail")
    }
}
