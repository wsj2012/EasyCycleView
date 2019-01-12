//
//  ViewController.swift
//  EasyCycleView
//
//  Created by 王树军(金融壹账通客户端研发团队) on 2019/1/12.
//  Copyright © 2019年 王树军. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let width = UIScreen.main.bounds.size.width

    lazy var cycleView4: EasyCycleView = {
        let c = EasyCycleView.init(frame: CGRect(x: 0, y: 200, width: width, height: 159))
        c.isAutomatic = true
        c.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return c
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(cycleView4)

        cycleView4.setImagesGroup([#imageLiteral(resourceName: "img_banner"),#imageLiteral(resourceName: "img_banner"),#imageLiteral(resourceName: "img_banner"),#imageLiteral(resourceName: "img_banner")], titlesGroup: nil)
        cycleView4.itemSize = CGSize(width: width-80-40, height: 145)
        cycleView4.itemSpacing = 40
        cycleView4.itemZoomScale = 1.1
        //cycleView4.itemBorderWidth = 1
        //cycleView4.itemBorderColor = UIColor.gray
        cycleView4.pageControlIndictirColor = #colorLiteral(red: 0.9607843137, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        cycleView4.pageControlCurrentIndictirColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        cycleView4.pageControlHeight = 18
        cycleView4.pageControlItemSize = CGSize(width: 6, height: 6)
        cycleView4.pageControlAlignment = .center
        cycleView4.delegate = self
//        cycleView4.didSelectedItem = {
//            print("cycleView4 didSelectedItem:  \($0)")
//        }
    }

}

extension ViewController: EasyCycleViewProtocol {
    func cycleViewDidScrollToIndex(_ index: Int) {
        print(index)
    }
    
    func cycleViewDidSelectedIndex(_ index: Int) {
        print("selected: \(index)")
    }
    
    
}

