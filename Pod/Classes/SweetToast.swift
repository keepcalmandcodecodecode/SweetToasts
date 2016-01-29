//
//  SweetToast.swift
//  Pods
//
//  Created by macmini1 on 28.01.16.
//
//

import Foundation
import UIKit
public enum ToastDuration:CGFloat{
    case Short = 3.0, Long = 5.0
}
public class SweetToast:UIView{
    var textLabel:UITextView
    var duration:ToastDuration = .Short
    func withDuration(duration:ToastDuration)->SweetToast{
        return self
    }
    func show(view:UIView){
        view.addSubview(self)
    }
    init(text:String){
        textLabel = UILabel();
        textLabel.textColor = UIColor.whiteColor()
        textLabel.text = text
        self.backgroundColor = UIColor.blackColor()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}