//
//  UIView+Sweets.swift
//  Pods
//
//  Created by macmini1 on 12.01.16.
//
//

import Foundation
import UIKit

extension UIView{
    public var x:CGFloat{
        get{
            return self.frame.origin.x
        }
        
        set{
            self.frame.origin.x = newValue
        }
    }
    public var y:CGFloat{
        get{
            return self.frame.origin.y
        }
        
        set{
            self.frame.origin.y = newValue
        }
    }
    
    public var height:CGFloat{
        get{
            return self.frame.size.height
        }
        
        set{
            self.frame.size.height = newValue
        }
    }
    
    public var width:CGFloat{
        get{
            return self.frame.size.width
        }
        
        set{
            self.frame.size.width = newValue
        }
    }
    
    public var size:CGSize{
        get{
            return self.frame.size
        }
        set{
            self.frame.size = newValue
        }
    }
    
    public var origin:CGPoint{
        get{
            return self.frame.origin
        }
        set{
            self.frame.origin = newValue
        }
    }
    
    public func removeSubviews(){
        while self.subviews.count > 0 {
            self.subviews.last?.removeFromSuperview()
        }
    }
}