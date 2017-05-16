//
//  MainViewController.swift
//  TestDY
//
//  Created by HYJ on 17/5/16.
//  Copyright © 2017年 HYJ. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.orangeColor()
        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Follow")
        addChildVc("Profile")

    }
    
    private func addChildVc(storyName:String){
        let chidlVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(chidlVc)
    }

}
