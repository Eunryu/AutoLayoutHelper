//
//  LayoutA.swift
//  AutoLayoutHelper
//
//  Created by 은아월 on 2017. 9. 13..
//

import Foundation
import UIKit

/*
    ---------------------------------------------------------------------
    LayoutC - LayoutCombine
    
    
    ---------------------------------------------------------------------
*/

public class LayoutC {
    
    open static let shared = LayoutC()
    
    let layoutB = LayoutB.shared
    let layoutE = LayoutE.shared
    
    public init() {
        
    }
    
    open func setAutoLayout(_ Leading: CGFloat?, Trailing: CGFloat?, Top: CGFloat?, Bottom: CGFloat?, Width: CGFloat?, Height: CGFloat?, TargetView: AnyObject, MainView: AnyObject){
        // Leading
        if Leading != nil {
            layoutB.Leading(TargetView: TargetView, MainView: MainView, LeadingSize: Leading!)
        }
        
        //Trailing
        if Trailing != nil {
            layoutB.Trailing(TargetView: TargetView, MainView: MainView, TrailingSize: Trailing!)
        }
        
        //Top
        if Top != nil {
            layoutB.Top(TargetView: TargetView, MainView: MainView, TopSize: Top!)
        }
        
        //Bottom
        if Bottom != nil {
            layoutB.Bottom(TargetView: TargetView, MainView: MainView, BottomSize: -Bottom!)
        }
        
        //Width
        if Width != nil {
            layoutB.EqualWidth(TargetView: TargetView, Width: Width!)
        }
        
        //Height
        if Height != nil {
            layoutB.EqualHeight(TargetView: TargetView, Height: Height!)
        }
    }
    
    open func setCenterLayout(_ X: Bool, Y: Bool, TargetView: AnyObject, MainView: AnyObject) {
        // X
        if X == true {
            layoutE.CenterX(TargetView: TargetView, MainView: MainView)
        }
        
        // Y
        if Y == true {
            layoutE.CenterY(TargetView: TargetView, MainView: MainView)
        }
    }
    
    open func setCenterLayout(_ X: Bool, Y: Bool, Xterms: CGFloat?, Yterms: CGFloat?, TargetView: AnyObject, MainView: AnyObject) {
        // X
        if X {
            if Xterms != nil {
                layoutE.CenterX(TargetView: TargetView, terms: Xterms!, MainView: MainView)
            } else {
                layoutE.CenterX(TargetView: TargetView, MainView: MainView)
            }
        }
        
        // Y
        if Y {
            if Yterms != nil {
                layoutE.CenterY(TargetView: TargetView, terms: Yterms!, MainView: MainView)
            } else {
                layoutE.CenterY(TargetView: TargetView, MainView: MainView)
            }
        }
    }
}
