//
//  ViewController.swift
//  SweetToasts
//
//  Created by keepcalmandcodecodecode on 01/28/2016.
//  Copyright (c) 2016 keepcalmandcodecodecode. All rights reserved.
//

import UIKit
import SweetToasts
import UIViewSweets

class ViewController: UIViewController {
    var showBtn:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        showBtn = UIButton(type: .System)
        showBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 80)
        showBtn.setTitle("Show", forState: .Normal)
        showBtn.setTitle("Show", forState: .Application)
        showBtn.addTarget(self, action: "show", forControlEvents: .TouchUpInside)
        self.view.addSubview(showBtn)

        // Do any additional setup after loading the view, typically from a nib.
    }
    func show(){
        let toast = SweetToast()
        toast.text = "Example"
        toast.frame = CGRectMake(0,0,100,80)
        toast.center = self.view.center
        toast.withDuration(.Short)
            .withBackgroundColor(UIColor.lightGrayColor())
            .withTextColor(UIColor.darkTextColor())
            .withFont(UIFont.systemFontOfSize(12.0))
            .show(self.view)
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        showBtn.center = CGPointMake(self.view.width/2.0,self.view.height - 100)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

