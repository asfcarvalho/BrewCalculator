//
//  BaseViewController.swift
//  BrewCalculator
//
//  Created by Anderson Carvalho on 04/02/19.
//  Copyright © 2019 asfcarvalho. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    private var viewMain: UIView!
    private var scrollMain: UIScrollView!
    private var textFiledPosition = CGRect(x: 0, y: 0, width: 0, height: 0)
    
    fileprivate var lastPosition = CGPoint(x: 0, y: 0)
    
    func setupViewController(viewMain: UIView, scrollMain: UIScrollView) {
        self.viewMain = viewMain
        self.scrollMain = scrollMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowOrHide(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardShowOrHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self);
    }
    
    @objc func keyboardShowOrHide(sender: Notification) {
        guard let keyboardRect = (sender.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
            return
        }
        
        UIView.animate(withDuration: 0.3, animations: {}) { (_) in
            if sender.name == UIResponder.keyboardWillShowNotification ||
                sender.name == UIResponder.keyboardWillChangeFrameNotification {
                
                let distanceToBottom = self.scrollMain.frame.size.height - (self.textFiledPosition.origin.y) - (self.textFiledPosition.size.height)
                let collapseSpace = keyboardRect.height - distanceToBottom
                
                if collapseSpace < 0 || collapseSpace < 0 {
                    return
                }
                
                self.scrollMain.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardRect.height, right: 0)
                
                self.lastPosition = self.scrollMain.contentOffset
                let contentOfSet = CGPoint(x: 0, y: collapseSpace)
                self.scrollMain.setContentOffset(contentOfSet, animated: true)
            }else {
                self.scrollMain.contentInset = UIEdgeInsets.zero
                self.scrollMain.setContentOffset(self.lastPosition, animated: true)
            }
        }
    }
    
    @objc public func textBeginChange(_ sender: UITextField) {
        
        guard var frame = sender.superview?.frame else {
            return
        }
        
        if frame.origin.y == 0 {
            guard let value = sender.superview?.superview?.superview?.frame else {
                return
            }
            
            frame = value
        }
        
        self.textFiledPosition = frame
        print(self.textFiledPosition)
    }

}
