//
//  ViewController.swift
//  demo
//
//  Created by Caoby on 2018/4/18.
//  Copyright © 2018年 Caoby. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var selectView: UITextView = {
        let selectView = UITextView.init()
        selectView.frame = CGRect(x: 12, y: 60, width: UIScreen.main.bounds.width-20.0, height: 200)
        selectView.backgroundColor = UIColor.lightText
        selectView.layer.borderColor =  UIColor.lightGray.cgColor
        selectView.layer.borderWidth = 1
        selectView.layer.cornerRadius = 10
        selectView.layer.masksToBounds = true
        selectView.textColor = UIColor.black
        selectView.font = UIFont.systemFont(ofSize: 16)
        return selectView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        view.addSubview(selectView)
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .edit, target: self, action: #selector(self.presentLeftMenu))
        
    }

    @objc func presentLeftMenu() {
        (UIApplication.shared.keyWindow?.rootViewController as? SSASideMenu)?._presentLeftMenuViewController()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

