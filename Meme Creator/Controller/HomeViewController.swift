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
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.isHidden = true
        navigationItem.hidesBackButton = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
        
        // Animations
        boxView.slideInFromBottom(duration: 1.0)
        logoImgView.increaseSizeAnimation(duration: 0.6)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.navigationBar.isHidden = false
    }
    
    func updateUI() {
        boxView.layer.cornerRadius = 50
        createBtn.roundedCornerShadow(color: K.colourSchemes.lightTurq)
        libraryBtn.roundedCornerShadow(color: K.colourSchemes.lightTurq)
    }
    
    @IBAction func createBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.Segues.createVC, sender: self)
    }
    
    @IBAction func libraryBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToLibaryVC", sender: self)
    }
    
}


