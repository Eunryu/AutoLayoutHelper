//
//  LayoutE.swift
//  AutoLayoutHelper
//
//  Created by 은아월 on 2017. 9. 13..
//

import Foundation
import UIKit

/*
 ---------------------------------------------------------------------
 LayoutE - LayoutExtension
 
 
 ---------------------------------------------------------------------
 */

public class LayoutE {
    
    open static let shared = LayoutE()
    public init() {
        
    }
    
    open func setAspectRation(ratioWidth: CGFloat, ratioHeight: CGFloat, TargetView: AnyObject) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth/ratioHeight, constant: 0))
    }
    
    open func setViewTerm(term: CGFloat, topView: AnyObject, bottomView: AnyObject, mainView: AnyObject) {
        mainView.addConstraint(NSLayoutConstraint(item: topView, attribute: .bottom, relatedBy: .equal, toItem: bottomView, attribute: .top, multiplier: 1.0, constant: -term))
    }
    
    open func setViewTerm(term: CGFloat, leftView: AnyObject, rightView: AnyObject, mainView: AnyObject) {
        mainView.addConstraint(NSLayoutConstraint(item: leftView, attribute: .right, relatedBy: .equal, toItem: rightView, attribute: .left, multiplier: 1.0, constant: -term))
    }
    
    open func CenterX(TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .centerX, relatedBy: .equal, toItem: MainView, attribute: .centerX, multiplier: 1.0, constant: 0))
    }
    
    open func CenterY(TargetView : AnyObject, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .centerY, relatedBy: .equal, toItem: MainView, attribute: .centerY, multiplier: 1.0, constant: 0))
    }
    
    open func setRatio(TargetView: AnyObject, ratioWidth: CGFloat, ratioHeigth: CGFloat) {
        TargetView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth / ratioHeigth, constant: 1.0))
    }
    
    open func CenterX(TargetView : AnyObject, terms: CGFloat, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .centerX, relatedBy: .equal, toItem: MainView, attribute: .centerX, multiplier: 1.0, constant: terms))
    }
    
    open func CenterY(TargetView : AnyObject, terms: CGFloat, MainView : AnyObject) {
        MainView.addConstraint(NSLayoutConstraint(item: TargetView, attribute: .centerY, relatedBy: .equal, toItem: MainView, attribute: .centerY, multiplier: 1.0, constant: terms))
    }
    
    // MARK: Return
    open func return_CenterX(_ TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerX = NSLayoutConstraint(item: TargetView, attribute: .centerX, relatedBy: .equal, toItem: MainView, attribute: .centerX, multiplier: 1.0, constant: 0)
        return centerX
    }
    
    open func return_CenterY(_ TargetView : AnyObject, MainView : AnyObject) -> NSLayoutConstraint {
        let centerY = NSLayoutConstraint(item: TargetView, attribute: .centerY, relatedBy: .equal, toItem: MainView, attribute: .centerY, multiplier: 1.0, constant: 0)
        return centerY
    }
    
    open func return_Ratio(_ TargetView: AnyObject, ratioWidth: CGFloat, ratioHeight: CGFloat) -> NSLayoutConstraint {
        let ratio = NSLayoutConstraint(item: TargetView, attribute: .width, relatedBy: .equal, toItem: TargetView, attribute: .height, multiplier: ratioWidth / ratioHeight, constant: 1.0)
        return ratio
    }
}
