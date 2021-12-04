//
//  UserDetail.swift
//  UIElements
//
//  Created by DCS on 04/12/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class UserDetail: UIViewController {
    
    private let toptv:UITextView = {
        let tv=UITextView()
        tv.text = "Fill Up More Detail About Your Self ..."
        tv.textAlignment = .center
        tv.backgroundColor = .white
        tv.textColor = .blue
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(toptv)
        view.backgroundColor = .white
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        toptv.frame=CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
