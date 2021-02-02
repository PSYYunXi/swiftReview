//
//  PSYTabbar.swift
//  SwiftDemo
//
//  Created by yunxi on 2021/2/2.
//

import UIKit

class PSYTabbar: UITabBar {
    
    var tabbarButton: UIButton!
    var callBlock: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        tabbarButton = UIButton(type: .custom)
        tabbarButton.setBackgroundImage(UIImage(named: "tabBar_publish_icon"), for: .normal)
        tabbarButton.setBackgroundImage(UIImage(named: "tabBar_publish_click_icon"), for: .selected)
        tabbarButton.addTarget(self, action: #selector(touchBlcok(button:)), for: .touchUpInside)
        self.addSubview(tabbarButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        var index = 0
        let itemW = bounds.size.width / 5.0
        for subview in subviews {
            if NSStringFromClass(subview.classForCoder) == "UITabBarButton" {
                if index == 2 {
                    subview.isHidden = true
                }
                index += 1;
            }
        }
        tabbarButton.frame = CGRect(x: 0, y: 0, width: itemW, height: itemW)
        tabbarButton.center = CGPoint(x: bounds.size.width / 2.0, y: bounds.size.height - 30 - 30)
    }
    
    @objc func touchBlcok(button: UIButton)  {
        if callBlock != nil {
            callBlock!()
        }
        
    }
}
