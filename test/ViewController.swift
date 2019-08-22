//
//  ViewController.swift
//  test
//
//  Created by jo on 2019/8/21.
//  Copyright © 2019 MiaMusic. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSWindowDelegate {
    
    override func viewWillAppear() {
        super.viewWillAppear()
        view.window?.delegate = self
    }
    
    func windowShouldClose(_ sender: NSWindow) -> Bool {
        print("1")
        if sender.isVisible {
            print("2")
            sender.orderBack(nil)
            // do something here
            print("3")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                print("4")
                sender.close()
            }
            print("5")
            return false
        } else {
            print("6")
            return true
        }
    }
    
    func windowWillClose(_ notification: Notification) {
        print("7")
    }
    
}
