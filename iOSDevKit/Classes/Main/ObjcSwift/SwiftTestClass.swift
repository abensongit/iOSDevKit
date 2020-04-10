//
//  SwiftTestClass.swift
//  iOSDevKit
//
//  Created by fangyuan on 2020/2/21.
//  Copyright © 2020 fangyuan. All rights reserved.
//

import UIKit

class SwiftTestClass: NSObject {
    
    @objc func showHelloWithName(name : String) -> Void {
        print("Swift Call Objc => \(name) Hello World")
    }
    
    @objc func userOCMethod() {
        let objcClass = ObjcTestClass()
        objcClass.addPrint()
    }

}
