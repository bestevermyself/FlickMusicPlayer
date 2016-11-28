//
//  ViewController.swift
//  FlickMusicPlayer
//
//  Created by Shuhei Hasegawa on 2016/11/28.
//  Copyright © 2016年 Shuhei Hasegawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, iCarouselDataSource, iCarouselDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let carousel = iCarousel(frame: CGRect(x: 0, y: 0, width: 300, height: 200))
        carousel.dataSource = self
        carousel.type = .coverFlow
        view.addSubview(carousel)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfItems(in carousel: iCarousel) -> Int {
        return 10
    }

    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        let imageView: UIImageView
        
        if view != nil {
            imageView = view as! UIImageView
        } else {
            imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 128))
        }
        
        imageView.image = UIImage(named: "page.png")
        
        return imageView
        
    }
    
    
    
}

