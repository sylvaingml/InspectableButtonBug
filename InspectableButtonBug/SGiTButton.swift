//
//  SGiTButton.swift
//  InspectableButtonBug
//
//  Created by Sylvain on 11/06/2017.
//  Copyright © 2017 S.G. inTech. All rights reserved.
//

import UIKit
import CoreGraphics


public protocol SGiTButtonAnimator
{
    // An empty protocol used as type reference
}



@IBDesignable
open class SGiTButton: UIButton
{
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    @IBInspectable var fillColor: UIColor? {
        didSet {
            if let color = fillColor {
                layer.backgroundColor = color.cgColor
            }
        }
    }
    
    
    @IBInspectable var borderColor: UIColor?  {
        didSet {
            if let color = borderColor {
                layer.borderColor = color.cgColor
            }
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    
    @IBInspectable var borderRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = borderRadius
        }
    }
    
    @IBInspectable var is3DPressed: Bool = true
    
    // BUG: uncomment the line bellow and IB will crash on layout
    // private var buttonAnimator: SGiTButtonAnimator?
}

