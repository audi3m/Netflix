//
//  ViewController.swift
//  Netflix
//
//  Created by J Oh on 6/4/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let navBar = UINavigationBar()
    let mainImageView = UIImageView()
    let playButton = UIButton()
    let likeListButton = UIButton()
    let popularLabel = UILabel()
    let image1 = UIImageView()
    let image2 = UIImageView()
    let image3 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configHierarchy()
        configLayout()
        configUI()
    }
    
    func configHierarchy() {
        view.addSubview(navBar)
        view.addSubview(mainImageView)
        mainImageView.addSubview(playButton)
        mainImageView.addSubview(likeListButton)
        view.addSubview(popularLabel)
        view.addSubview(image2)
        view.addSubview(image1)
        view.addSubview(image3)
    }
    
    func configLayout() {
        navBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview()
        }
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(navBar.snp.bottom).offset(5)
            make.leading.trailing.equalTo(view.safeAreaLayoutGuide).inset(20)
            make.height.equalTo(420)
        }
        
        playButton.snp.makeConstraints { make in
            make.leading.bottom.equalToSuperview().inset(20)
            make.width.equalTo(140)
            make.height.equalTo(40)
        }
        
        likeListButton.snp.makeConstraints { make in
            make.trailing.bottom.equalToSuperview().inset(20)
            make.width.equalTo(140)
            make.height.equalTo(40)
        }
        
        popularLabel.snp.makeConstraints { make in
            make.horizontalEdges.equalTo(view).inset(20)
            make.top.equalTo(mainImageView.snp.bottom).offset(10)
        }
        
        image2.snp.makeConstraints { make in
            make.top.equalTo(popularLabel.snp.bottom).offset(10)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(110)
            make.height.equalTo(180)
        }
        
        image1.snp.makeConstraints { make in
            make.top.equalTo(popularLabel.snp.bottom).offset(10)
            make.trailing.equalTo(image2.snp.leading).offset(-5)
            make.width.equalTo(110)
            make.height.equalTo(180)
        }
        
        image3.snp.makeConstraints { make in
            make.top.equalTo(popularLabel.snp.bottom).offset(10)
            make.leading.equalTo(image2.snp.trailing).offset(5)
            make.width.equalTo(110)
            make.height.equalTo(180)
        }
    }
    
    func configUI() {
        view.backgroundColor = .black
        
        let navItem = UINavigationItem(title: "NETFLIX")
        let signInBarButton = UIBarButtonItem(title: "회원가입", style: .plain, target: self, action: #selector(signInButtonClicked))
        navItem.rightBarButtonItem = signInBarButton
        navBar.setItems([navItem], animated: true)
        
        navBar.barTintColor = .clear
        navBar.tintColor = .white
        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        mainImageView.backgroundColor = .lightGray
        mainImageView.layer.cornerRadius = 12
        mainImageView.layer.masksToBounds = true
        mainImageView.image = .movie1
        
        playButton.backgroundColor = .white
        playButton.layer.cornerRadius = 5
        playButton.setImage(.play, for: .normal)
        playButton.tintColor = .black
        playButton.setTitle("재생", for: .normal)
        playButton.setTitleColor(.black, for: .normal)
        playButton.titleLabel?.font = .systemFont(ofSize: 14)
        
        
        likeListButton.backgroundColor = .gray
        likeListButton.layer.cornerRadius = 5
        likeListButton.setImage(.plus, for: .normal)
        likeListButton.setTitle("내가 찜한 리스트", for: .normal)
        likeListButton.tintColor = .white
        likeListButton.setTitleColor(.white, for: .normal)
        likeListButton.titleLabel?.font = .systemFont(ofSize: 14)
        
        popularLabel.text = "지금 뜨는 콘텐츠"
        popularLabel.textColor = .white
        
        image1.contentMode = .scaleAspectFill
        image1.layer.masksToBounds = true
        image1.backgroundColor = .lightGray
        image1.layer.cornerRadius = 5
        image1.image = .movie2
        
        image2.contentMode = .scaleAspectFill
        image2.layer.masksToBounds = true
        image2.backgroundColor = .lightGray
        image2.layer.cornerRadius = 5
        image2.image = .movie3
        
        image3.contentMode = .scaleAspectFill
        image3.layer.masksToBounds = true
        image3.backgroundColor = .lightGray
        image3.layer.cornerRadius = 5
        image3.image = .movie4
        
    }
    
    @objc func signInButtonClicked() {
        print("Sign in button tapped")
        let vc = SignInViewController()
        let nav = UINavigationController(rootViewController: vc)
        present(nav, animated: true)
        
    }
    
}

