//
//  UserCell.swift
//  Twitterr
//
//  Created by Jorge MR on 15/12/17.
//  Copyright © 2017 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class UserHeader : UICollectionViewCell {
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    //metodo obligatorio
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

class UserCell: UICollectionViewCell {
    //Clase customizable para las celdas del collection view
    
    let profileImageView : UIImageView = {
       let imageView = UIImageView()
        imageView.image = UIImage(named: "profile_image")
        imageView.layer.cornerRadius = 25
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Jorge_soyo 🌿"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        //permite aplicar constraints
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let userNameLabel : UILabel = {
        let label = UILabel()
        label.text = "@jorge_soyo"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.6195473075, green: 0.6196516156, blue: 0.6195250154, alpha: 1)
        //permite aplicar constraints
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bioTextView : UITextView =  {
        let textView = UITextView()
        textView.text = "Maldita sea ¿por qué me sigo acordando de los nombres completos de mis compañeros de secundaria? Es memoria desperdiciada 😓"
        textView.font = UIFont.systemFont(ofSize: 15)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let followButton : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 18
        button.clipsToBounds = true
        button.setTitle("FOLLOW", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    //metodo obligatorio
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews(){
        backgroundColor = .white
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(userNameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        //profile image view constraints
        profileImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 12).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //name Label constraints
        nameLabel.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: followButton.leadingAnchor, constant: -12).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //user name label constraints
        userNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
        userNameLabel.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: 8).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: followButton.leadingAnchor, constant: -12).isActive = true
        userNameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        //bio text view constraints
        bioTextView.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor).isActive = true
        bioTextView.leadingAnchor.constraint(equalTo: userNameLabel.leadingAnchor,constant: -5).isActive = true
        bioTextView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        bioTextView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        //follow button constraints
        followButton.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        followButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 34).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
}

class UserFooter : UICollectionViewCell {
    let textLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    //metodo obligatorio
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews(){
        addSubview(textLabel)
        textLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
