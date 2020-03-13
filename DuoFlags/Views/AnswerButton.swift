//
//  AnswerButton.swift
//  DuoFlags
//
//  Created by Isnard Silva on 09/03/20.
//  Copyright © 2020 Isnard Silva. All rights reserved.
//

import UIKit

@IBDesignable
public final class CustomButton: UIButton {
    @IBInspectable var selectedBackgroundColor: UIColor?
    @IBInspectable var selectedBorderColor: UIColor?
    
    
    
//    public let borderBottomPlus = CALayer()
    
    
//    public override var isSelected: Bool {
//        didSet {
//            self.backgroundColor = isSelected ? UIColor.red : UIColor.clear
//        }
//    }
    
//    public override var isTouchInside: Bool {
//        didSet {
//                   self.backgroundColor = isTouchInside ? UIColor.red : UIColor.clear
//               }
//    }
    
    
//    var borderWidth: CGFloat = 2.0
//    var borderColor = UIColor.white.cgColor

//    @IBInspectable var titleText: String? {
//        didSet {
//            self.setTitle(titleText, for: .normal)
//            self.setTitleColor(UIColor.black,for: .normal)
//        }
//    }

//    override init(frame: CGRect){
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
////        fatalError("init(coder:) has not been implemented")
//    }

    public override func layoutSubviews() {
        super.layoutSubviews()
        
//        self.setBackgroundColor(color: .blue, forState: .selected)
//        self.setBackgroundColor(color: .blue, forState: .highlighted)
        
        setup()
//        self.addBottomBorderWithColor(color: .red, width: 20)
        
        self.setTitleColor(.orange, for: .highlighted)
    }
    
    
    
//

    
    private func setup() {
        
//        self.setBackgroundColor(color: .blue, forState: .highlighted)
        
        
        ////        self.clipsToBounds = true
////        self.layer.cornerRadius = 10
//
//        self.backgroundColor = .clear
//
////        self.addBottomBorderWithColor(color: UIColor(cgColor: self.layer.borderColor!), width: 5)
//
////        self.addRightBorderWithColor(color: UIColor(cgColor: self.layer.borderColor!), width: 1)
//
//
////        0, btn.frame.size.height - 1.0f, btn.frame.size.width, 1
//
////        let borderBottom = UIView(frame: CGRect(x: 0, y: frame.size.height, width: <#T##CGFloat#>, height: <#T##CGFloat#>))
//
//
////        self.layer.borderWidth = 5
////        self.layer.borderColor = UIColor(named: "AnswerBorderButtonColor")?.cgColor
//
////        self.layer.borderColor = borderColor
////        self.layer.borderWidth = borderWidth
//
//
//        let borderBottom = UIView(frame: CGRect(x:0, y:self.frame.size.height - 5, width:self.frame.size.width, height:5))
//
//        borderBottom.backgroundColor = .red
//
//        self.addSubview(borderBottom)
        
        
//        let borderBottom =
        
        
//        let borderBottomPlus = CALayer()
//        borderBottomPlus.backgroundColor = UIColor.red.cgColor
//        borderBottomPlus.frame = CGRect(x: self.cornerRadius, y: self.frame.size.height - self.layer.borderWidth, width: self.frame.size.width - (self.cornerRadius * 2), height: self.layer.borderWidth * 2)
        
//        borderBottomPlus.frame = CGRect(x: 0, y: self.frame.size.height - self.layer.borderWidth, width: self.frame.size.width - (self.cornerRadius * 2), height: self.layer.borderWidth * 2)
//
//
//        self.layer.masksToBounds = true
//
//
//
//        self.layer.addSublayer(borderBottomPlus)
//
//        self.layer.cornerRadius = 10
        
//        CGRectMake(-borderWidth, -borderWidth, self.frame.size.width+borderWidth, self.frame.size.height+borderWidth)
        
//        let borderBottomPlus = CALayer()
//        borderBottomPlus.backgroundColor = self.borderColor?.cgColor
//        borderBottomPlus.frame = CGRect(x: 0.0, y: self.frame.maxY - self.layer.borderWidth * 4, width: self.frame.size.width, height: self.layer.borderWidth * 4)
//
//        self.layer.addSublayer(borderBottomPlus)
//        self.layer.masksToBounds = true
        
        
//        self.backgroundColor = .red
        
//        let borderBottomPlus = CALayer()
//        borderBottomPlus.backgroundColor = self.borderColor?.cgColor
//        borderBottomPlus.frame = CGRect(x: 0.0, y: self.frame.maxY - self.layer.borderWidth * 4, width: self.frame.size.width, height: self.layer.borderWidth * 4)
//self.layer.masksToBounds = true
//                self.layer.addSublayer(borderBottomPlus)
//
        
        
        
        let borderBottomPlus = CALayer()
        borderBottomPlus.backgroundColor = self.borderColor?.cgColor
        borderBottomPlus.frame = CGRect(x: 0, y: self.frame.size.height - self.borderWidth * 2, width:self.frame.size.width, height: self.borderWidth * 2)
        self.layer.addSublayer(borderBottomPlus)
        
        
        self.layer.masksToBounds = true
    }
}

@IBDesignable extension CustomButton {

    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}


//extension AnswerButton {
//    func setBackgroundColor(color: UIColor, forState: UIControl.State) {
//        self.clipsToBounds = true  // add this to maintain corner radius
//        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
//        if let context = UIGraphicsGetCurrentContext() {
//            context.setFillColor(color.cgColor)
//            context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
//            let colorImage = UIGraphicsGetImageFromCurrentImageContext()
//            UIGraphicsEndImageContext()
//            self.setBackgroundImage(colorImage, for: forState)
//        }
//    }
//}


//extension AnswerButton {
//func addTopBorderWithColor(color: UIColor, width: CGFloat) {
//    let border = CALayer()
//    border.backgroundColor = color.cgColor
//    border.frame = CGRect(x:0,y: 0, width:self.frame.size.width, height:width)
//
//    border.cornerRadius = 10
//    self.layer.addSublayer(border)
//}
//
//func addRightBorderWithColor(color: UIColor, width: CGFloat) {
//    let border = CALayer()
//    border.backgroundColor = color.cgColor
//    border.frame = CGRect(x: self.frame.size.width - width,y: 0, width:width, height:self.frame.size.height)
//    self.layer.addSublayer(border)
//}
//
//func addBottomBorderWithColor(color: UIColor, width: CGFloat) {
//    let border = CALayer()
//    border.backgroundColor = color.cgColor
//    border.frame = CGRect(x:0, y:self.frame.size.height - width, width:self.frame.size.width, height:width)
//    self.layer.addSublayer(border)
//}
//
//func addLeftBorderWithColor(color: UIColor, width: CGFloat) {
//    let border = CALayer()
//    border.backgroundColor = color.cgColor
//    border.frame = CGRect(x:0, y:0, width:width, height:self.frame.size.height)
//    self.layer.addSublayer(border)
//}
//}
