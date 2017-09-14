//
//  LayoutB.swift
//  AutoLayoutHelper
//
//  Created by 은아월 on 2017. 9. 13..
//

import Foundation
import UIKit

/*
 ---------------------------------------------------------------------
 LayoutB - LayoutBasic
 
 
 ---------------------------------------------------------------------
 */

public class LayoutB {
    
    open static let shared = LayoutB()
    public init() {
        
    }
    
    open func Leading(TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .leading, relatedBy: .equal, toItem: MainView, attribute: .leading, multiplier: 1.0, constant: LeadingSize))
    }
    
    open func Trailing(TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: MainView, attribute: .trailing, relatedBy: .equal, toItem: TargetView, attribute: .trailing, multiplier: 1.0, constant: TrailingSize))
    }
    
    open func Top(TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .top, relatedBy: .equal, toItem: MainView, attribute: .top, multiplier: 1.0, constant: TopSize))
    }
    
    open func Bottom(TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .bottom, relatedBy: .equal, toItem: MainView, attribute: .bottom, multiplier: 1.0, constant: -BottomSize))
    }
    
    open func EqualWidth(TargetView : AnyObject, Width : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: Width))
    }
    
    open func EqualHeight(TargetView : AnyObject, Height : CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: Height))
    }
    
    // return
    open func return_Leading(TargetView : AnyObject, MainView : AnyObject, LeadingSize : CGFloat) -> NSLayoutConstraint {
        let Leading = NSLayoutConstraint(item: TargetView, attribute: .leading, relatedBy: .equal, toItem: MainView, attribute: .leading, multiplier: 1.0, constant: LeadingSize)
        return Leading
    }
    
    open func return_Trailing(TargetView : AnyObject, MainView : AnyObject, TrailingSize : CGFloat) -> NSLayoutConstraint {
        let Trailing = NSLayoutConstraint(item: MainView, attribute: .trailing, relatedBy: .equal, toItem: TargetView, attribute: .trailing, multiplier: 1.0, constant: TrailingSize)
        return Trailing
    }
    
    open func return_Top(TargetView : AnyObject, MainView :AnyObject, TopSize : CGFloat) -> NSLayoutConstraint {
        let top = NSLayoutConstraint(item: TargetView, attribute: .top, relatedBy: .equal, toItem: MainView, attribute: .top, multiplier: 1.0, constant: TopSize)
        return top
    }
    
    open func return_Bottom(TargetView : AnyObject, MainView : AnyObject, BottomSize : CGFloat) -> NSLayoutConstraint {
        let bottom = NSLayoutConstraint(item: TargetView, attribute: .bottom, relatedBy: .equal, toItem: MainView, attribute: .bottom, multiplier: 1.0, constant: BottomSize)
        return bottom
    }
}
