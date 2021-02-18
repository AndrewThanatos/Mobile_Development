//
//  BookCell.swift
//  My App
//
//  Created by a.berezhniuk on 17.02.2021.
//

import UIKit

class BookCell: UITableViewCell {
    
    var bookImageView = UIImageView()
    var bookTextStackView = UIStackView()
    var bookTitleLabel = UILabel()
    var bookDescriptionLabel = UILabel()
    var bookPriceLabel = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(bookImageView)
        addSubview(bookTextStackView)
//        addSubview(bookTitleLabel)
//        addSubview(bookDescriptionLabel)
//        addSubview(bookPriceLabel)
        
        configureImageView()
        configureTitleLabel()
        configureDescriptionLabel()
        configurePriceLabel()
        configureStackView()
        
        setImageConstrains()
        setStackViewConstrains()
//        setTitleLabelConstraints()
//        setDescriptionLabelConstraints()
//        setPriceLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(book: Book){
        bookImageView.image = book.image
        bookTitleLabel.text = book.title
        bookDescriptionLabel.text = book.description
        bookPriceLabel.text = book.price
    }
    
    func configureImageView() {
        bookImageView.layer.cornerRadius = 10
        bookImageView.clipsToBounds = true
    }
    
    func configureStackView() {
        bookTextStackView.axis              = .vertical
        bookTextStackView.distribution      = .fillEqually
        bookTextStackView.spacing           = 5
        addTextToStackView()
    }
    
    func addTextToStackView() {
        bookTextStackView.addArrangedSubview(bookTitleLabel)
        bookTextStackView.addArrangedSubview(bookDescriptionLabel)
        bookTextStackView.addArrangedSubview(bookPriceLabel)
        print(bookTextStackView)
    }
    
    func configureTitleLabel() {
        bookTitleLabel.numberOfLines = 0
        bookTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configureDescriptionLabel() {
        bookDescriptionLabel.numberOfLines = 0
        bookDescriptionLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configurePriceLabel() {
        bookPriceLabel.numberOfLines = 0
        bookPriceLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstrains() {
        bookImageView.translatesAutoresizingMaskIntoConstraints = false
        bookImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bookImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        bookImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        bookImageView.widthAnchor.constraint(equalTo: bookImageView.heightAnchor).isActive = true
    }
    
    func setStackViewConstrains() {
        bookTextStackView.translatesAutoresizingMaskIntoConstraints = false
        bookTextStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bookTextStackView.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20).isActive = true
        bookTextStackView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        bookTextStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setTitleLabelConstraints() {
        bookTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        bookTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bookTitleLabel.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bookTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setDescriptionLabelConstraints() {
        bookTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        bookTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bookTitleLabel.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bookTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setPriceLabelConstraints() {
        bookTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        bookTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bookTitleLabel.leadingAnchor.constraint(equalTo: bookImageView.trailingAnchor, constant: 20).isActive = true
        bookTitleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        bookTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
}

