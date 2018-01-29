//
//  qw.swift
//  aqqqaq
//
//  Created by sameh mohammed on 1/29/18.
//  Copyright © 2018 com.trio. All rights reserved.
//

    import UIKit

    class qw: UIView {

        
        // Only override draw() if you perform custom drawing.
        // An empty implementation adversely affects performance during animation.
        override func draw(_ rect: CGRect) {
            // Drawing code
            
            
            self.drawTimeLeftShape()
        }
     

        
        let timeLeftShapeLayer = CAShapeLayer()
        let bgShapeLayer = CAShapeLayer()
        var timeLeft: TimeInterval = 3783
        var endTime: Date?
        var timeLabel =  UILabel()
        var timer = Timer()
        let strokeIt = CABasicAnimation(keyPath: "strokeEnd")
        
        func drawBgShape() {
            bgShapeLayer.path = UIBezierPath(arcCenter: CGPoint(x: self.frame.midX , y: self.frame.midY), radius:
                min(frame.width/2, frame.height/2), startAngle: -90.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: true).cgPath
            bgShapeLayer.strokeColor = UIColor.white.cgColor
            bgShapeLayer.fillColor = UIColor.clear.cgColor
            bgShapeLayer.lineWidth = 15
            self.layer.addSublayer(bgShapeLayer)
        }
        func drawTimeLeftShape() {
            timeLeftShapeLayer.path = UIBezierPath(arcCenter: CGPoint(x: self.frame.midX , y: self.frame.midY), radius:
                min(frame.width/2, frame.height/2), startAngle: -90.degreesToRadians, endAngle: 270.degreesToRadians, clockwise: true).cgPath
            timeLeftShapeLayer.strokeColor = UIColor.red.cgColor
            timeLeftShapeLayer.fillColor = UIColor.clear.cgColor
            timeLeftShapeLayer.lineWidth = 15
            self.layer.addSublayer(timeLeftShapeLayer)
        }
        
        
        
        
    }
