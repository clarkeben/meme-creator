//
//  OnboardingViewController.swift
//  Meme Creator
//
//  Created by Ben Clarke on 17/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var getStartedBtn: UIButton!
    
    var scrollWidth: CGFloat! = 0.0
    var scrollHeight: CGFloat! = 0.0
    
    var titles = ["Create", "Design", "Share"]
    var descriptions = ["Create memes, caption memes or upload your own custom memes.", "Change font attributes and adjust memes to your liking.", "Share your work across Instagram, Facebook, Reddit and more."]
    var images = ["onboarding1", "onboarding2", "onboarding3"]
    
    var frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
    override func viewDidLayoutSubviews() {
        scrollWidth = scrollView.frame.size.width
        scrollHeight = scrollView.frame.size.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.view.layoutIfNeeded()
        
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        
        createScrollViewSlides()
        
        // Width of scrollview + disable vertical scroll
        scrollView.contentSize = CGSize(width: scrollWidth * CGFloat(titles.count), height: scrollHeight)
        scrollView.contentSize.height = 1.0
        
        pageControl.numberOfPages = titles.count
        pageControl.currentPage = 0
    }
    
    @IBAction func pageChanged(_ sender: Any) {
        scrollView!.scrollRectToVisible(CGRect(x: scrollWidth * CGFloat ((pageControl?.currentPage)!), y: 0, width: scrollWidth, height: scrollHeight), animated: true)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        setIndicatorForCurrentPage()
    }

    func setIndicatorForCurrentPage() {
        let page = (scrollView?.contentOffset.x)!/scrollWidth
        pageControl?.currentPage = Int(page)
    }
    
    func createScrollViewSlides() {
        // Create slides and add them
        for index in 0..<titles.count {
            frame.origin.x = scrollWidth * CGFloat(index)
            frame.size = CGSize(width: scrollWidth, height: scrollHeight)
            
            let slide = UIView(frame: frame)
            
            let imageView = UIImageView.init(image: UIImage.init(named: images[index]))
            imageView.frame =  CGRect(x: 0, y: 0, width: 300, height: 300)
            imageView.contentMode = .scaleAspectFit
            imageView.center = CGPoint(x: scrollWidth/2, y: scrollHeight/2 - 50)
            imageView.roundedCornersImg()
            
            let title = UILabel.init(frame: CGRect(x: 32, y: imageView.frame.maxY + 30, width: scrollWidth - 64, height: 30))
            title.textAlignment = .center
            title.font = UIFont.boldSystemFont(ofSize: 20)
            title.text = titles[index]
            
            let descText = UILabel.init(frame: CGRect(x:32, y: title.frame.maxY + 10, width:scrollWidth - 64, height:50))
            descText.textAlignment = .center
            descText.numberOfLines = 3
            descText.font = UIFont.systemFont(ofSize: 18.0)
            descText.text = descriptions[index]

            slide.addSubview(imageView)
            slide.addSubview(title)
            slide.addSubview(descText)
            scrollView.addSubview(slide)
        }
    }

}
