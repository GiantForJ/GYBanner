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
        
        //        let imageView = UIImageView(frame: view.bounds)
        //        imageView.image = UIImage(named: dataList[0].imageName)
        //        view.addSubview(imageView)
        
        let banner = GYBanner()
        let bannerView =  banner.initWithFrame(CGRect(x: 0, y: 0, width: view.bounds.size.width, height: 200)) { (index) -> () in
            print(index)
        }
        banner.reloadGYBanner(dataList)

        view.addSubview(bannerView)
        
        let sv = UIScrollView(frame: CGRect(x: 0, y: 300, width: 320, height: 200))
        
        
        sv.pagingEnabled = true
        sv.bounces = false
        sv.backgroundColor = UIColor.redColor()
        sv.showsHorizontalScrollIndicator = false
        sv.delegate = self
        sv.userInteractionEnabled = true
        sv.scrollEnabled = true
        
        
        let viewC = UIView(frame: CGRect(x: 320, y: 0, width: 320, height: 200))
        viewC.backgroundColor = UIColor.blackColor()
        sv.addSubview(viewC)
        
        
        // 三屏循环滚动
        sv.contentSize = CGSize(width: 320 * 3, height:200)
        
        view.addSubview(sv)
        
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

extension ViewController:UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
       print("dla")
    }
    
}
