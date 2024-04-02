//
//  DataBaseView.swift
//  myShop
//
//  Created by user on 2/4/24.
//

import UIKit

protocol DataBaseViewDelegate: AnyObject {
}

class DataBaseView: UIView {
    
    weak var delegate: DataBaseViewDelegate?
    
    private lazy var titleSurName = UILabel()
    
    private lazy var titleName = UILabel()
    
    private lazy var titlePhoneNumber = UILabel()
    
    private lazy var titleDate = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updatingLabels(surname: String,
                        name: String,
                        phonenumber: String) {
        titleSurName.text = surname
        titleName.text = name
        titlePhoneNumber.text = phonenumber
    }
    
    private func setupConstrains() {
        addSubview(titleSurName)
        addSubview(titleName)
        addSubview(titlePhoneNumber)
        addSubview(titleDate)
        titleSurName.translatesAutoresizingMaskIntoConstraints = false
        titleName.translatesAutoresizingMaskIntoConstraints = false
        titlePhoneNumber.translatesAutoresizingMaskIntoConstraints = false
        titleDate.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleSurName.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleSurName.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            
            titleName.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleName.topAnchor.constraint(equalTo: titleSurName.bottomAnchor, constant: 10),
            
            titlePhoneNumber.centerXAnchor.constraint(equalTo: centerXAnchor),
            titlePhoneNumber.topAnchor.constraint(equalTo: titleName.bottomAnchor, constant: 10),
            titleDate.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleDate.topAnchor.constraint(equalTo: titlePhoneNumber.bottomAnchor, constant: 10)
        ])
    }
    
}
