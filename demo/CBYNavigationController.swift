//
//  CbyNavgationController.swift
//  CbyTodayNews
//
//  Created by Caoby on 2016/11/2.
//  Copyright © 2016年 Caoby. All rights reserved.
//

import UIKit

class CBYNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.init(red: 48/255.0, green: 136/255.0, blue: 231/255.0, alpha: 1.0)
        navBar.tintColor = UIColor.white
        navBar.titleTextAttributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 17)]
        navBar.isTranslucent = false
        navBar.barStyle = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0{
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "btn_return_white"), style: .plain, target: self, action: #selector(navigationBack))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc func navigationBack(){
        popViewController(animated: true)
    }
}
