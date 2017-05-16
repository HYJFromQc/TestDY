//
//  UIBarButtonItem-Extension.swift
//  TestDY
//
//  Created by HYJ on 17/5/16.
//  Copyright © 2017年 HYJ. All rights reserved.
//


import UIKit

extension UIBarButtonItem{
    
    //    class func createItem(imageName:String,higIamgeName:String,size:CGSize) -> UIBarButtonItem{
    //        let btn = UIButton()
    //        btn.setImage(UIImage(named: imageName ), forState: .Normal)
    //        btn.setImage(UIImage(named: higIamgeName ), forState: .Selected)
    //        btn.frame = CGRect(origin: CGPointZero, size: size)
    //       return UIBarButtonItem(customView: btn)
    //    }
    
    /**便利构造函数 1.convenience 2.在构造 函数中必须明确使用一个设计的构造函数*/
    convenience  init(imageName:String,higIamgeName:String = "",size:CGSize = CGSizeZero) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName ), forState: .Normal)
        
        if higIamgeName != ""{
            btn.setImage(UIImage(named: higIamgeName ), forState: .Highlighted)
            
        }
        
        if size == CGSizeZero{
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPointZero, size: size)
        }
        
        
        self.init(customView:btn)
    }
}