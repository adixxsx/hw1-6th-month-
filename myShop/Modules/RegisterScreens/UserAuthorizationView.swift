//
//  UserAuthorizationView.swift
//  myShop
//
//  Created by user on 2/4/24.
//

import UIKit

protocol UserAuthorizationViewDelegate: AnyObject {
    
    func userAuthoDelegate()
}

class UserAuthorizationView: UIView {
    
    weak var delegate: UserAuthorizationViewDelegate?
    
    lazy var surnameTextFeild: UITextField = {
        let view = UITextField()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 12
        view.placeholder = "Enter a Surname"
        let leftContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 24))
        view.leftView = leftContainerView
        view.leftViewMode = .always
        view.addTarget(self, action: #selector(loginButtonTapped), for: .valueChanged)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameTextFeild: UITextField = {
        let view = UITextField()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 12
        view.placeholder = "Enter a Name"
        let leftContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 24))
        view.leftView = leftContainerView
        view.leftViewMode = .always
        view.addTarget(self, action: #selector(loginButtonTapped), for: .valueChanged)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nextButton: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("NEXT", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .red
        view.layer.cornerRadius = 12
        view.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setupContrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupContrains() {
        addSubview(surnameTextFeild)
        addSubview(nameTextFeild)
        addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            surnameTextFeild.topAnchor.constraint(equalTo: topAnchor, constant: 100),
            surnameTextFeild.heightAnchor.constraint(equalToConstant: 40),
            surnameTextFeild.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            surnameTextFeild.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),
            nameTextFeild.topAnchor.constraint(equalTo: surnameTextFeild.bottomAnchor, constant: 25),
            nameTextFeild.heightAnchor.constraint(equalToConstant: 40),
            nameTextFeild.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            nameTextFeild.rightAnchor.constraint(equalTo: rightAnchor, constant: -16),


            nextButton.topAnchor.constraint(equalTo: nameTextFeild.bottomAnchor, constant: 40),
            nextButton.heightAnchor.constraint(equalToConstant: 38),
            nextButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 150),
            nextButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -150),
        ])
    }
    
    @objc
    private func loginButtonTapped() {
        delegate?.userAuthoDelegate()
    }
    
}
