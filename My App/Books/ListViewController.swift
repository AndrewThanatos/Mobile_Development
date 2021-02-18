//
//  ListViewController.swift
//  My App
//
//  Created by a.berezhniuk on 17.02.2021.
//

import UIKit

class ListViewController: UIViewController {
    
    var tableView = UITableView()
    var books: [Book] = []
    
    struct Cells {
        static let bookCell = "BookCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Books"
        books = fetchData()
        configureTableView()

    }
    

    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(BookCell.self, forCellReuseIdentifier: Cells.bookCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.bookCell) as! BookCell
        let book = books[indexPath.row]
        cell.set(book: book)
    
        return cell
    }
    
    
}



extension ListViewController {
    
    func fetchData() -> [Book] {
        let book1 = Book(image: Images.niney, title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", description: "Dummy Data", price: "10")
        let book2 = Book(image: Images.softSkill, title: "5 Soft Skills For Developer", description: "Dummy Data", price: "10")
        
        return [book1, book2]
    }
}
