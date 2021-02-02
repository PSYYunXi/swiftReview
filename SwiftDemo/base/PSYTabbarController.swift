//
//  PSYTabbarController.swift
//  SwiftDemo
//
//  Created by yunxi on 2021/2/2.
//

import UIKit

class PSYTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        // Do any additional setup after loading the view.
    }
    

    func initUI() {
        
        let tabBar = PSYTabbar();
        weak var weakSelf = self
        tabBar.callBlock = {
            weakSelf!.selectedIndex = 2
        }
        
        self.setValue(tabBar, forKey: "tabBar")
        
        let mainNavi = PSYNavigationController(rootViewController: MainViewController())
        let courseNavi = PSYNavigationController(rootViewController: CourseViewController())
        let addNavi = PSYNavigationController(rootViewController: AddViewController())
        let collectionNavi = PSYNavigationController(rootViewController: CollectionViewController())
        let mineNavi = PSYNavigationController(rootViewController: MineViewController())
        
        tabbarSetting(viewController: mainNavi, image: UIImage(named: "tabBar_essence_click_icon")!, selectedImage: UIImage(named: "tabBar_essence_icon")!, title: "主页")
        tabbarSetting(viewController: courseNavi, image: UIImage(named: "tabBar_new_click_icon")!, selectedImage: UIImage(named: "tabBar_new_icon")!, title: "课程")
        
        tabbarSetting(viewController: collectionNavi, image: UIImage(named: "tabBar_me_click_icon")!, selectedImage: UIImage(named: "tabBar_me_icon")!, title: "收藏")
        tabbarSetting(viewController: mineNavi, image: UIImage(named: "tabBar_friendTrends_click_icon")!, selectedImage: UIImage(named: "tabBar_friendTrends_icon")!, title: "我的")
        viewControllers = [mainNavi, courseNavi, addNavi, collectionNavi, mineNavi]
 
    }
    
    func tabbarSetting(viewController: UIViewController, image:UIImage, selectedImage: UIImage, title: String)  {
        let tabbarItem = viewController.tabBarItem
        tabbarItem!.title = title
        tabbarItem!.image = image
        tabbarItem!.selectedImage = selectedImage
        tabbarItem?.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 12), .foregroundColor: UIColor.darkGray], for: .normal)
        tabbarItem?.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 12), .foregroundColor: UIColor(red: 40/255.0, green: 123/255.0, blue: 251/255.0, alpha: 1.0)], for: .selected)
    }

}
