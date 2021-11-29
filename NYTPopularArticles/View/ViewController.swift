//
//  ViewController.swift
//  NYTPopularArticles
//
//  Created by kalyani on 28/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    lazy var viewModel = {
        ArticlesViewModel()
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initView()
        initViewModel()
    }
    
    func initView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func initViewModel() {
        // Get data
        viewModel.getArticles(duration: Constants.other) { (error, articles) in
            // Reload TableView closure
            if(error == nil){
                DispatchQueue.main.async {
                               self.tableView.reloadData()
                           }
            }
           
        }
        
    }
 
}

// MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.popular_articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? ArticleTableCell else { fatalError("error") }
        
        cell.lblTitle.text = self.viewModel.popular_articles[indexPath.row].title
        
        cell.lblAuthor.text = self.viewModel.popular_articles[indexPath.row].byline
        
        cell.lblDate.text = self.viewModel.popular_articles[indexPath.row].publishedDate
        
        return cell
    }
}

