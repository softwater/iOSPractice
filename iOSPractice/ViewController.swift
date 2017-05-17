//
//  ViewController.swift
//  iOSPractice
//
//  Created by softwater on 2017/5/16.
//  Copyright © 2017年 zjq. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 事件定义在 UIControlEvents
    @IBAction func touchCancel(_ sender: UIButton) {
        print("touchCancel 有系统事件：比如电话进来了")
    }
    @IBAction func touchDown(_ sender: Any) {
        print("touchDown 在 UI 内发生 touch 事件")
    }
    @IBAction func touchDownRepeat(_ sender: Any) {
        print("touchDownRepeat 重复点击")
    }
    @IBAction func touchDragEnter(_ sender: Any) {
        print("touchDragEnter 从 UI 外拖动到了 UI 内")
    }
    @IBAction func touchDragExit(_ sender: Any) {
        print("touchDragExit 从 UI 内拖动到了 UI 外")
    }
    @IBAction func touchDragInside(_ sender: Any) {
        print("touchDragInside 在 ui 内拖动")
    }
    @IBAction func touchDragOutside(_ sender: Any) {
        print("touchDragOutside 在 UI 外拖动")
    }
    @IBAction func touchUpInside(_ sender: Any) {
        print("touchUpInside 在 UI 内释放")
    }
    @IBAction func touchUpOutside(_ sender: Any) {
        print("touchUpOutside 在 UI 外释放")
    }
    
    
    /// 针对特殊控件的事件 start--------------
    // UIButton
    @IBAction func primaryActionTriggered(_ sender: UIButton) {
        print("primaryActionTriggered A semantic action triggered by buttons.")
        sender.titleLabel?.text = "我点了";
    }
    
    // UITextField
    @IBAction func editingDidBegin(_ sender: UITextField) {
        print("editingDidBegin UITextField 事件：开始编辑（获取焦点）")
    }
    @IBAction func editingChanged(_ sender: UITextField) {
        print("editingChanged UITextField 事件：文本内容改变")
    }
    @IBAction func didEndOnExit(_ sender: UITextField) {
        print("didEndOnExit UITextField 事件：点击键盘确定按钮时调用")
    }
    @IBAction func editingDidEnd(_ sender: UITextField) {
        print("editingDidEnd UITextField 事件：编辑完成（失去焦点）")
    }
    
    
    // Slider 的值改变事件
    @IBAction func valueChanged(_ sender: UISlider) {
        print("valueChanged " + String(sender.value))
    }
    /// 针对特殊控件的事件 end--------------
}

