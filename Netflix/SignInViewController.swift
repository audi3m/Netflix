//
//  SignInViewController.swift
//  Netflix
//
//  Created by J Oh on 6/4/24.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
//    let navBar = UINavigationBar()
    let titleLabel = UILabel()
    let emailTextField = UITextField()
    let passwordTextField = UITextField()
    let nicknameTextField = UITextField()
    let locationTextField = UITextField()
    let recommendTextField = UITextField()
    let signInButton = UIButton()
    let moreInfoLabel = UILabel()
    let moreInfoSwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "회원가입"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        configHierarchy()
        configLayout()
        configUI()
        
        print("Hello I'm SignIn")
        
    }
    
    func configHierarchy() {
//        view.addSubview(navBar)
        view.addSubview(titleLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(nicknameTextField)
        view.addSubview(locationTextField)
        view.addSubview(recommendTextField)
        view.addSubview(signInButton)
        view.addSubview(moreInfoLabel)
        view.addSubview(moreInfoSwitch)
    }
    
    func configLayout() {
//        navBar.snp.makeConstraints { make in
//            make.top.equalTo(view.safeAreaLayoutGuide)
//            make.horizontalEdges.equalToSuperview()
//        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
//            make.top.equalTo(navBar.snp.bottom).offset(10)
            make.height.equalTo(50)
            make.centerX.equalTo(view.snp.centerX)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(titleLabel.snp.bottom).offset(80)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(40)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(emailTextField.snp.bottom).offset(15)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(40)
            
        }
        
        nicknameTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(passwordTextField.snp.bottom).offset(15)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(40)
        }
        
        locationTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(nicknameTextField.snp.bottom).offset(15)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(40)
        }
        
        recommendTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(locationTextField.snp.bottom).offset(15)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(40)
        }
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(recommendTextField.snp.bottom).offset(15)
            make.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(30)
            make.height.equalTo(50)
            
        }
        
        moreInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(signInButton.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(30)
            
        }
        
        moreInfoSwitch.snp.makeConstraints { make in
            make.centerY.equalTo(moreInfoLabel.snp.centerY)
            make.trailing.equalToSuperview().offset(-30)
            
        }
        
    }
    
    func configUI() {
        view.backgroundColor = .black
        
//        let navItem = UINavigationItem(title: "회원가입")
//        navBar.tintColor = .lightGray
//        navBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        navBar.setItems([navItem], animated: true)
        
        titleLabel.text = "NETFLIX"
        titleLabel.font = .systemFont(ofSize: 30, weight: .black)
        titleLabel.textColor = .red
        
        emailTextField.backgroundColor = .gray
        emailTextField.textColor = .white
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호",
                                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.8),
                                                                               .font: UIFont.systemFont(ofSize: 13)])
        emailTextField.textAlignment = .center
        emailTextField.borderStyle = .roundedRect
        
        passwordTextField.backgroundColor = .gray
        passwordTextField.textColor = .white
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호",
                                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.8),
                                                                               .font: UIFont.systemFont(ofSize: 13)])
        passwordTextField.textAlignment = .center
        passwordTextField.borderStyle = .roundedRect
        
        nicknameTextField.backgroundColor = .gray
        nicknameTextField.textColor = .white
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임",
                                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.8),
                                                                               .font: UIFont.systemFont(ofSize: 13)])
        nicknameTextField.textAlignment = .center
        nicknameTextField.borderStyle = .roundedRect
        
        locationTextField.backgroundColor = .gray
        locationTextField.textColor = .white
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치",
                                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.8),
                                                                               .font: UIFont.systemFont(ofSize: 13)])
        locationTextField.textAlignment = .center
        locationTextField.borderStyle = .roundedRect
        
        recommendTextField.backgroundColor = .gray
        recommendTextField.textColor = .white
        recommendTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력",
                                                                  attributes: [NSAttributedString.Key.foregroundColor : UIColor.white.withAlphaComponent(0.8),
                                                                               .font: UIFont.systemFont(ofSize: 13)])
        recommendTextField.textAlignment = .center
        recommendTextField.borderStyle = .roundedRect
        
        signInButton.backgroundColor = .white
        signInButton.setTitleColor(.black, for: .normal)
        signInButton.setTitle("회원가입", for: .normal)
        signInButton.layer.cornerRadius = 10
        
        moreInfoLabel.text = "추가 정보 입력"
        moreInfoLabel.textColor = .white
        
        moreInfoSwitch.onTintColor = .red
        
        
    }
    
    
    
}
