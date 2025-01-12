//
//  UIButtonExtension.swift
//  SDJG
//
//  Created by 王俊 on 16/4/19.
//  Modify  by 王俊 on 17/6/5. swift3.0
//  Copyright © 2016年 sunlands. All rights reserved.
//

import UIKit

extension UIButton  {
    
    /**
     设置 标题 标题颜色 状态 事件响应者 响应方法名 默认单击事件 title字体大小 默认18可不传 背景色 默认白色 可不传 tag值 默认0 可不传
     
     - parameter titles:        标题数组
     - parameter titleColors:   标题颜色数组
     - parameter controlStates: 状态数组
     - parameter target:       事件响应者
     - parameter selectName:   响应方法名
     - parameter fontSize:   title字体大小 默认18可不传
     - parameter backgroundColor:   背景色 默认白色 可不传
     - parameter tag:   tag值 默认0 可不传
     */
    public final func extSetTitles(_ titles : [String] , titleColors : [UIColor] , controlStates : [UIControlState] , target : AnyObject  , selector : Selector , fontSize : CGFloat = 18.0 , backgroundColor : UIColor = UIColor.ThemeLabel.colorLite , tag : Int = 0  ){
        
        self.backgroundColor = backgroundColor
        self.tag = tag
        for i in 0..<titles.count  {

        
            self.setTitle(titles[i], for: controlStates[i])
            self.setTitleColor(titleColors[i], for: controlStates[i])
            
    
        }
        
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
        
        self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
    
    }
    

    
    
    /**
     设置 图片 显示状态 
     
     - parameter images:    图片
     - parameter controlStates: 状态数组
    
     */
    public final func extSetImages(_ images : [UIImage] , controlStates : [UIControlState] ){
        
        for i in 0..<images.count  {
            
            self.setImage(images[i] , for: controlStates[i])
            
        }
    
    }
    

    /**
     设置 图片 显示状态 事件响应者 响应方法名 默认单击事件
     
     - parameter images:    图片
     - parameter controlStates: 状态数组
     - parameter target:       事件响应者
     - parameter selectName:   响应方法名
     */
    public final func extSetImageNameSelector(_ images : [UIImage] , controlStates : [UIControlState] , target : AnyObject  , selector : Selector  , tag : Int = 0 ){
        
        for i in 0..<images.count  {
            
            self.setImage(images[i], for: controlStates[i])
            
        }
        
        self.tag = tag
        
        self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
        
    }
    
    /**
     设置图片以及文字样式按钮、文字大小、颜色、以及文字图片内边距
     
     - parameter title:           标题
     - parameter titleColor:      标题颜色
     - parameter imageName:       图片名
     - parameter fontSize:        标题大小 默认18 可不传
     - parameter imageEdgeInsets: 图片内边距 默认 0 0 0 0 可不传
     - parameter titleEdgeInsets: 标题内边距 默认 0 0 0 0 可不传
     - parameter tag:             tag值 默认0 可不传
     */
    public final func extSetTitle(_ title : String , titleColor : UIColor ,  imageName : String , fontSize : CGFloat = 18.0 , imageEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero, titleEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero , tag : Int = 0 ,target : AnyObject? = nil  , selector : Selector){
        
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.setImage(UIImage.init(named: imageName), for: UIControlState.normal)
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
        self.imageEdgeInsets = imageEdgeInsets
        self.titleEdgeInsets = titleEdgeInsets
        self.tag = tag
        
        if target != nil{
            
            self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
            
        }
        
    }
    
    public final func extSetAddTarget(_ target : Any ,_ selector : Selector , _ event : UIControlEvents = UIControlEvents.touchUpInside){
        self.addTarget(target, action: selector, for: event)
    }
    
    public final func extSetTitle(_ title : String , _ titleFont : CGFloat , _ titleColor : UIColor , _ state : UIControlState){
        self.setTitle(title, for: state)
        self.titleLabel?.font = UIFont.systemFont(ofSize: titleFont)
        self.setTitleColor(titleColor, for: state)
    }
    
    /**
     设置图片以及文字样式按钮、文字大小、颜色、以及文字图片内边距
     
     - parameter title:           标题
     - parameter titleColor:      标题颜色
     - parameter imageName:       图片名
     - parameter fontSize:        标题大小 默认18 可不传
     - parameter imageEdgeInsets: 图片内边距 默认 0 0 0 0 可不传
     - parameter titleEdgeInsets: 标题内边距 默认 0 0 0 0 可不传
     - parameter tag:             tag值 默认0 可不传
     */
    public final func extSetTitle(_ title : String , titleColor : UIColor , fontSize : CGFloat = 18.0){
        
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    /**
     设置图片以及文字样式按钮、文字大小、颜色、以及文字图片内边距
     
     - parameter title:           标题
     - parameter titleColor:      标题颜色
     - parameter image:       图片
     - parameter fontSize:        标题大小 默认18 可不传
     - parameter imageEdgeInsets: 图片内边距 默认 0 0 0 0 可不传
     - parameter titleEdgeInsets: 标题内边距 默认 0 0 0 0 可不传
     - parameter tag:             tag值 默认0 可不传
     */
    public final func extSetTitle(_ title : String , titleColor : UIColor ,  image : UIImage , fontSize : CGFloat = 18.0 , imageEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero, titleEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero , tag : Int = 0 ,target : AnyObject? = nil  , selector : Selector){
        
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.setImage(image, for: UIControlState.normal)
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
        self.imageEdgeInsets = imageEdgeInsets
        self.titleEdgeInsets = titleEdgeInsets
        self.tag = tag
        
        if target != nil{
            
            self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
            
        }
        
    }
    
    /**
     设置图片以及文字样式按钮、文字大小、颜色、以及文字图片内边距
     
     - parameter title:           标题
     - parameter titleColor:      标题颜色
     - parameter imageName:       图片名
     - parameter selectImageName  选中图片名
     - parameter fontSize:        标题大小 默认18 可不传
     - parameter imageEdgeInsets: 图片内边距 默认 0 0 0 0 可不传
     - parameter titleEdgeInsets: 标题内边距 默认 0 0 0 0 可不传
     - parameter tag:             tag值 默认0 可不传
     */
    public final func extSetTitle(_ title : String , titleColor : UIColor ,  imageName : String , selectImageName : String , fontSize : CGFloat = 18.0 , imageEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero, titleEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero , tag : Int = 0 ,target : AnyObject? = nil  , selector : Selector){
        
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.setImage(UIImage.init(named: imageName), for: UIControlState.normal)
        self.setImage(UIImage.init(named: selectImageName), for: UIControlState.selected)
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
        self.imageEdgeInsets = imageEdgeInsets
        self.titleEdgeInsets = titleEdgeInsets
        self.tag = tag
        
        if target != nil{
            
            self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
            
        }
        
    }
    
    
    /**
     设置图片以及文字样式按钮、文字大小、颜色、以及文字图片内边距
     
     - parameter title:           标题
     - parameter titleColor:      标题颜色
     - parameter image:           图片
     - parameter selectImage      选中图片
     - parameter fontSize:        标题大小 默认18 可不传
     - parameter imageEdgeInsets: 图片内边距 默认 0 0 0 0 可不传
     - parameter titleEdgeInsets: 标题内边距 默认 0 0 0 0 可不传
     - parameter tag:             tag值 默认0 可不传
     */
    public final func extSetTitle(_ title : String , titleColor : UIColor ,  image : UIImage , selectImage : UIImage , fontSize : CGFloat = 18.0 , imageEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero, titleEdgeInsets : UIEdgeInsets = UIEdgeInsets.zero , tag : Int = 0 ,target : AnyObject? = nil  , selector : Selector){
        
        self.setTitle(title, for: UIControlState.normal)
        self.setTitleColor(titleColor, for: UIControlState.normal)
        self.setImage(image, for: UIControlState.normal)
        self.setImage(selectImage, for: UIControlState.selected)
        self.titleLabel!.font = UIFont.systemFont(ofSize: fontSize)
        self.imageEdgeInsets = imageEdgeInsets
        self.titleEdgeInsets = titleEdgeInsets
        self.tag = tag
        
        if target != nil{
            
            self.addTarget(target, action: selector, for: UIControlEvents.touchUpInside)
            
        }
        
    }
    
    /**
     按钮的状态改变
     */
    public final func extChangeBtnSelect(){
    
        self.isSelected = self.isSelected == true ? false : true
        
    }
    
    /**
     根据给的颜色更改btn的backgroundColor
    */
    public final func extsetBackgroundColor(backgroundColor : UIColor,state : UIControlState){
    
//        self.setBackgroundImage(nil, forState: state)
        
        self.setBackgroundImage(self.imageWithColor(backgroundColor), for: state)
    
    }
    
    public final func imageWithColor(_ color : UIColor) -> UIImage {
        
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return image!
        
    }
    
    private struct AssociatedKeys {
        static var topNameKey = "topNameKey"
        static var leftNameKey = "leftNameKey"
        static var bottomNameKey = "bottomNameKey"
        static var rightNameKey = "rightNameKey"
    }

    /**
     扩大按钮点击范围
     
     - parameter top:    顶部扩大多少
     - parameter left:   左边扩大多少
     - parameter bottom: 底部扩大多少
     - parameter right:  右边扩大多少
     */
    public final func setEnlargeEdgeWithTop(_ top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) {
        
        objc_setAssociatedObject(self, &AssociatedKeys.topNameKey, NSNumber.init(value: Float(top)), objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        
        objc_setAssociatedObject(self, &AssociatedKeys.leftNameKey, NSNumber.init(value: Float(left)), objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        
        objc_setAssociatedObject(self, &AssociatedKeys.bottomNameKey, NSNumber.init(value: Float(bottom)), objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        
        objc_setAssociatedObject(self, &AssociatedKeys.rightNameKey, NSNumber.init(value: Float(right)), objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
        
    }
    
    /**
     把点击范围设置成size大小
     
     - parameter size: 调整后的点击范围的大小
     */
    public final func setTouchAreaToSize(_ size: CGSize) {
        var top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0
        if size.width > self.frame.size.width {
            left = (size.width - self.frame.size.width) / 2
            right = left
        }
        
        if (size.height > self.frame.size.height) {
            top = (size.height - self.frame.size.height) / 2
            bottom = top
        }
        setEnlargeEdgeWithTop(top, left: left, bottom: bottom, right: right)
    }
    
    public final func enlargedRect() -> CGRect {
        
        let topEdge = objc_getAssociatedObject(self, &AssociatedKeys.topNameKey) as? NSNumber
        let rightEdge = objc_getAssociatedObject(self, &AssociatedKeys.rightNameKey) as? NSNumber
        let bottomEdge = objc_getAssociatedObject(self, &AssociatedKeys.bottomNameKey) as? NSNumber
        let leftEdge = objc_getAssociatedObject(self, &AssociatedKeys.leftNameKey) as? NSNumber
        
        if topEdge != nil && rightEdge != nil && bottomEdge != nil && leftEdge != nil {
            
            return CGRect(x :self.bounds.origin.x - CGFloat.init(truncating:leftEdge!),
                          y :self.bounds.origin.y - CGFloat.init(truncating:topEdge!),
                          width: self.bounds.size.width + CGFloat.init(truncating:leftEdge!) + CGFloat.init(truncating:rightEdge!),
                          height:self.bounds.size.height + CGFloat.init(truncating:topEdge!) + CGFloat.init(truncating:bottomEdge!))
        } else {
            return self.bounds
        }
    }
    
    //倒计时，btn的type需要为custom
    public func countdown(_ num : Int ,unit : String = "s" ,defaultValue : String = "" , complete : (() -> ())? = nil){
        if num >= 0{
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
                self.setTitle("\(num)" + unit, for: UIControlState.normal)
                self.countdown(num - 1,defaultValue:defaultValue,complete : complete)
            }
            self.isEnabled = false
        }else{
            self.setTitle(defaultValue, for: UIControlState.normal)
            self.isEnabled = true
            if complete != nil{
                complete!()
            }
        }
    }

    open override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let rect = self.enlargedRect()
        if rect.equalTo(self.bounds) || self.isHidden {
            return super.hitTest(point, with: event)
        }
        if rect.contains(point) {
            return self
        } else {
            return nil
        }
    }
    
    //设置左文字右图片
    func setLeftTextAndRightImg(){
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(0, -btn.imageView.size.width, 0, btn.imageView.size.width)];
//        [btn setImageEdgeInsets:UIEdgeInsetsMake(0, btn.titleLabel.bounds.size.width, 0, -btn.titleLabel.bounds.size.width)];
        self.titleEdgeInsets = UIEdgeInsets.init(top: 0, left: -(self.imageView?.image?.size.width)!, bottom: 0, right: (self.imageView?.image?.size.width)!)
        self.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: (self.titleLabel?.bounds.size.width)!, bottom: 0, right: -(self.titleLabel?.bounds.size.width)!)
    }
    
}
