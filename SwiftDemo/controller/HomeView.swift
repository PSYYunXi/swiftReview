//
//  HomeView.swift
//  SwiftDemo
//
//  Created by yunxi on 2021/2/2.
//

import UIKit

class HomeView: UIView {

    init() {
        super.init(frame: CGRect.zero)
        print("我执行了init")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("我执行了initFrame")
    }
    
    convenience init(_ name: String) {
        self.init()
        print("我执行了吗")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
