//
//  ListViewController.swift
//  My App
//
//  Created by a.berezhniuk on 17.02.2021.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var books: [BookStruct] = []
    

    override func viewDidLoad() {
        super.viewDidLoad()
        books = fetchData()
        
        setTableViewDelegates()
        
        fetchData()
    }
    
    
    func setTableViewDelegates() {
//        tableView.delegate = self
        tableView.dataSource = self
        tableView.dequeueReusableCell(withIdentifier: BookCell.id) as! BookCell

    }

}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: BookCell.id, for: indexPath) as! BookCell
        let book = books[indexPath.row]

        
        cell.book = book
    
        return cell
    }
    
    
}



extension ListViewController {
    
    func fetchData() -> [BookStruct] {
        let book1 = BookStruct(image: Images.niney, title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", description: "Dummy Data", price: "10")
        let book2 = BookStruct(image: Images.softSkill, title: "5 Soft Skills For Developer", description: "Dummy Data", price: "10")
        
        return [book1, book2]
    }
}
