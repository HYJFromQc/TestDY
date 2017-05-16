
//
//  HomeViewController.swift
//  TestDY
//
//  Created by HYJ on 17/5/16.
//  Copyright © 2017年 HYJ. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setupUI()
    }
}

extension HomeViewController{
    
    private func setupUI(){
        setupNavogationBar()
    }
    
    private func setupNavogationBar(){
       
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName:"logo")
        
        let size = CGSize(width: 40, height: 40)

        let historyItem = UIBarButtonItem(imageName: "image_my_history", higIamgeName: "Image_my_history_click", size: size)
        let searchItem =   UIBarButtonItem(imageName: "btn_search", higIamgeName: "btn_search_clicked", size: size)
        let qrcodeItem =    UIBarButtonItem(imageName: "Image_scan", higIamgeName: "Image_scan_click", size: size)
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
    }
}

