//
//  ViewController.swift
//  GYBanner
//
//  Created by zhushushu on 16/4/23.
//  Copyright © 2016年 zhushushu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var dataList:[GYBannerModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        instanceDatas()
        
        let banner = GYBanner()
        let bannerView =  banner.initWithFrame(CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 200)) { (index) -> () in
            //            print(index)
            let alertView = UIAlertView(title: String(index), message: "🐷", delegate: nil, cancelButtonTitle: "取消")
            
            alertView.show()
            
            
            
        }
        banner.reloadGYBanner(dataList)
        
        view.addSubview(bannerView)
        
        
        
    }
    
    
    
    
    /**
     模拟数据
     */
    private func instanceDatas(){
        
        for i in 1...6 {
            
            let product = GYBannerModel()
            product.imageNamed = String(i) + ".jpg"
            
            product.labelText = String(i)
            dataList.append(product)
            
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


