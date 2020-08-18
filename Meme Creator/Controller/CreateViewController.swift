//
//  CreateViewController.swift
//  Meme Creator
//
//  Created by Ben Clarke on 18/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topTxtBtn: UIButton!
    @IBOutlet weak var bottomTxtBtn: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var colourBtn: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.isNavigationBarHidden = false

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "CREATE 🎨"
        
        let backBtn = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .done, target: self, action: #selector(goBackToPriorVC))
        backBtn.tintColor = UIColor(named: K.colourSchemes.lightTurq)
        navigationItem.leftBarButtonItem = backBtn
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.isNavigationBarHidden = true
    }
    

    @objc func goBackToPriorVC() {
        navigationController?.popViewController(animated: true)
    }

}
