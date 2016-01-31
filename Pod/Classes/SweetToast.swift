//
//  SweetToast.swift
//  Pods
//
//  Created by macmini1 on 28.01.16.
//
//

import Foundation
import UIKit
public enum ToastDuration:NSTimeInterval{
    case Short = 3.0, Long = 5.0
}
public class SweetToast:UILabel{
    var duration:ToastDuration = .Short
    public func withDuration(duration:ToastDuration)->SweetToast{
        self.duration = duration
        return self
    }
    public func withTextColor(textColor:UIColor)->SweetToast{
        self.textColor = textColor
        return self
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blackColor()
        self.textColor = UIColor.whiteColor()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func show(view:UIView){
        view.addSubview(self)
        self.dismissAnimated()
    }
    func dismissAnimated(){
        UIView.animateWithDuration(0.5, delay: duration.rawValue, options: .CurveEaseOut, animations: {
            self.alpha = 0.0
        }, completion: { finished in
            dispatch_async(dispatch_get_main_queue(), {self.removeFromSuperview()})
        });
    }
}