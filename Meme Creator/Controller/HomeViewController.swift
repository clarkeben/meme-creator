//
//  ViewController.swift
//  Meme Creator
//
//  Created by Ben Clarke on 17/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var logoImgView: UIImageView!
    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var libraryBtn: UIButton!
    @IBOutlet weak var creditsBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.isHidden = true
        navigationItem.hidesBackButton = true
        
        updateUI()
        appNameLabel.slideInFromLeft()
        logoImgView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        
        UIView.animate(withDuration: 0.6) {
            self.logoImgView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        
    }
    
    func updateUI() {
        boxView.layer.cornerRadius = 50
        
        createBtn.roundedCornerShadow(color: K.colourSchemes.lightTurq)
        libraryBtn.roundedCornerShadow(color: K.colourSchemes.lightTurq)
        creditsBtn.roundedCornerShadow(color: K.colourSchemes.lightPurple)
    }
    
    @IBAction func createBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func libraryBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func creditBtnPressed(_ sender: Any) {
        
    }
    
    
    
}


