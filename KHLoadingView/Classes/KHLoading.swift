//
//  KHLoadingView.swift
//  Pods
//
//  Created by Md. Kamrul Hasan on 5/14/17.
//
//

import UIKit

public class KHLoading: UIView {

    var movingView = UIView()
    var forwardX:CGFloat = 1
    var moviewViewHeight:CGFloat = 5
    var movingViewSpeed:CGFloat = 0.005
    
    var movingViewTimer: Timer?
    var view = UIView()
    
    public func showLoadingView(parentView:UIView) {
        self.view = parentView
        
        movingView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width*0.50, height: moviewViewHeight)
        movingView.backgroundColor = UIColor.blue.withAlphaComponent(0.34)
        view.addSubview(movingView)
        
        startSendPickUpRequestShakeTimer()
    }
        
    
    //MARK: SendPickUpRequestButton Shake
    func startSendPickUpRequestShakeTimer () {
        
        if self.movingViewTimer == nil {
            self.movingViewTimer =  Timer.scheduledTimer(
                timeInterval: TimeInterval(movingViewSpeed),
                target      : self,
                selector    : #selector(self.startAnimating),
                userInfo    : nil,
                repeats     : true)
        }
    }
    
    func stopSendPickUpRequestShakeTimer() {
        
        if movingViewTimer != nil {
            movingViewTimer?.invalidate()
            movingViewTimer = nil
        }
    }
    
    func startAnimating() {
        
        let movingViewX = movingView.frame.minX >= view.frame.maxX ? 0-movingView.frame.width-forwardX:movingView.frame.minX + forwardX
        
        self.movingView.frame = CGRect(x: movingViewX, y: movingView.frame.minY, width: movingView.frame.width, height: moviewViewHeight)
        
    }
}
