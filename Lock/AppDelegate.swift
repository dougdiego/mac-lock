//
//  AppDelegate.swift
//  Lock
//
//  Created by Doug Diego on 6/19/15.
//  Copyright (c) 2015 Doug Diego. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        lockScreen()
        exit(0)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func lockScreen() {
        var task:NSTask = NSTask()
        task.arguments = ["-suspend"]
        task.launchPath = "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession"
        task.launch()
    }
}

