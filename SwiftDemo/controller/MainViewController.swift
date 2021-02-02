//
//  MainViewController.swift
//  SwiftDemo
//
//  Created by yunxi on 2021/2/2.
//

import UIKit
import SnapKit


class MainViewController: BaseViewController {
    

        
    private var _name:String?
    private(set) var name:String? {
        get{
            print("执行get")
            return _name
        }
        set{
            print("执行set")
            _name = newValue
        }
    }
    
    private var _value:String = "as"
    private var value:String {
        set {
            _value = newValue
        }
        get{
            return _value
        }
    }
    
    var dataList = [String]()
    
    private lazy var tableView: UITableView! = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        navigationItem.title = "主页"
        view.addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.edges.equalTo(UIEdgeInsets.zero)
        }
        initializedData()
                
    }
    
    private func initializedData() {
        dataList.append("Change Language")
        dataList.append("Change Font Size")
        dataList.append("Histogram View")
        dataList.append("Wheel Menu")
        dataList.append("Scroll Animation")
        dataList.append("Recorde Encode")
        dataList.append("Draw Avator")
        dataList.append("Horizontal layout")
        dataList.append("Marquee")
        dataList.append("评分控件")
        dataList.append("Tags Layout View")
        dataList.append("Custom Popup View")
        dataList.append("Vernier Capliper")
        dataList.append("Flip Animation")
        dataList.append("Chat Kit")
        dataList.append("Broadcast Carousel")
        dataList.append("LineChart")
        dataList.append("Phone Verification")
        dataList.append("Custom Transition Animation")
        dataList.append("Present Transition")
        dataList.append("Cell Countdown")
        dataList.append("PhotoBrowser")
        dataList.append("Mailbox Filling")
        dataList.append("RotateAnimation-OC")
        dataList.append("RotateAnimation-swift")
        dataList.append("CustomPassword-OC")
        dataList.append("CustomPassword-Swift")
        dataList.append("KeyboardToolBar")
        dataList.append("CustomInputToolBar")
        dataList.append("CustomTextView-Limit Word Count")
        dataList.append("Card View")
        dataList.append("Wave View-OC")
        dataList.append("Wave View-Swift")
        dataList.append("Dragging Bubble")
        dataList.append("CustomQRCode")
        dataList.append("Popover View")
        dataList.append("RotatingPicture")
        dataList.append("Log")
        dataList.append("TransitionAnimation")
        tableView.reloadData()
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "cellId"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)

        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: cellId)
        }
        cell!.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        cell!.textLabel!.text = dataList[indexPath.row]
        return cell!
    }
    
    internal func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    internal func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.0
    }
    
    internal func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}
