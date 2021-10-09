//
//  VC+PageControllerDelegations.swift
//  EpicHomeTry
//
//  Created by Amr on 08/10/2021.
//

import UIKit
extension VC {
    func configurePageControlImages() {

        self.pageControl.numberOfPages = pres.pages.count
        self.pageControl.currentPage = 0
        self.pageControl.currentPageIndicatorTintColor = UIColor.blue
        
      
         self.scrollView.showsVerticalScrollIndicator = false
         self.scrollView.showsHorizontalScrollIndicator = false
     
         let WidthForPage = self.scrollView.frame.size.width
        let PagesCount = CGFloat(pres.pages.count)
         self.scrollView.contentSize = CGSize(width: WidthForPage * PagesCount ,height: self.scrollView.frame.size.height)
             pageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControl.Event.valueChanged)
     
        
        
        if pres.pages.count  >= 3 {
            for index in 0..<3 {
                frame.origin.x = self.scrollView.frame.size.width * CGFloat(index)
                frame.size = self.scrollView.frame.size
                frame.size = CGSize(width: self.scrollView.frame.width - 10 , height: self.scrollView.frame.height)
                var subView = UIImageView(frame: frame)
                subView.image = UIImage(named: "\(index + 1)")
                subView.contentMode = .scaleToFill
                subView.isUserInteractionEnabled = true
                subView.tag = index
                self.scrollView.addSubview(subView)
                
            }
        }

        pagerView.addSubview(pageControl)
            
        }
        
    @objc func changePage(sender: AnyObject) -> () {
        let x = CGFloat(pageControl.currentPage) * scrollView.frame.size.width
        scrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }
    
    
    
    }

