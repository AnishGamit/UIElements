//
//  ViewController.swift
//  UIElements
//
//  Created by DCS on 04/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let toplbl:UILabel = {
        let lbl=UILabel()
        lbl.text = "Register Here..."
        lbl.textAlignment = .center
        lbl.backgroundColor = .white
        lbl.textColor = .blue
        return lbl
    }()
    private let txtUname:UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Name"
        txt.textAlignment = .left
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return txt
    }()
    private let txtEmail:UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Email"
        txt.textAlignment = .left
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return txt
    }()
    private let txtMobile:UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Phone No"
        txt.textAlignment = .left
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        return txt
    }()
    private let txtPwd:UITextField = {
        let txt = UITextField()
        txt.placeholder = "Enter Password"
        txt.textAlignment = .left
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        txt.isSecureTextEntry = true
        return txt
    }()
    private let txtCPwd:UITextField = {
        let txt = UITextField()
        txt.placeholder = "Retype Password"
        txt.textAlignment = .left
        txt.borderStyle = .roundedRect
        txt.backgroundColor = UIColor(white: 0, alpha: 0.1)
        txt.isSecureTextEntry = true
        return txt
    }()
    private let btnRegister:UIButton = {
        let btn=UIButton()
        btn.setTitle("Register", for: .normal)
        btn.addTarget(self, action: #selector(registerClick), for: .touchUpInside)
        btn.backgroundColor = .orange
        btn.layer.cornerRadius=6
        return btn
    }()
    @objc private func registerClick(){
        let vc = UserDetail()
        let nav = UINavigationController(rootViewController: vc)
        //nav.modalPresentationStyle = .fullScreen
        nav.setNavigationBarHidden(true, animated: false)
        present(nav,animated: false)
        //.pushViewController(vc, animated: false)
        //present(nav,animated: false)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(toplbl)
        view.addSubview(txtUname)
        view.addSubview(txtPwd)
        view.addSubview(txtCPwd)
        view.addSubview(txtEmail)
        view.addSubview(btnRegister)
        view.addSubview(txtMobile)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        toplbl.frame = CGRect(x: 20, y: 80, width: view.frame.size.width - 40, height: 40)
        txtUname.frame = CGRect(x: 20, y: toplbl.bottom + 20, width: view.frame.size.width - 40, height: 40)
        txtEmail.frame = CGRect(x: 20, y: txtUname.bottom + 20, width: view.frame.size.width - 40, height: 40)
        txtMobile.frame = CGRect(x: 20, y: txtEmail.bottom + 20, width: view.frame.size.width - 40, height: 40)
        txtPwd.frame = CGRect(x: 20, y: txtMobile.bottom + 20, width: view.frame.size.width - 40, height: 40)
        txtCPwd.frame = CGRect(x: 20, y: txtPwd.bottom + 20, width: view.frame.size.width - 40, height: 40)
        btnRegister.frame = CGRect(x: 20, y: txtCPwd.bottom + 20, width: view.frame.size.width - 40, height: 40)
        
    }


}

