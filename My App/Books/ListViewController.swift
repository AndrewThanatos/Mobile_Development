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
//        books = fetchData()
        
        setTableViewDelegates()
        
//        fetchData()
        fetchBooksData(from: "BooksList")
        tableView.reloadData()
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
        
        if book.image != "" {
            cell.bookImageView.image = UIImage(named: book.image)
        } else {
            cell.bookImageView.image = UIImage(named: "empty_3")
        }
    
        return cell
    }
    
    
}



extension ListViewController {
        
    private func fetchBooksData(from file: String) {
            
            do {
                if let path = Bundle.main.path(forResource: file, ofType: "txt"),
                   let jsonData = try String(contentsOfFile: path, encoding: String.Encoding.utf8).data(using: .utf8) {
                    
                    let decodedData = try JSONDecoder().decode(Search.self, from: jsonData)
                    books = decodedData.search
                }
            } catch {
                print(error)
            }
        }
}
