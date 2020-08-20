//
//  CreateViewController.swift
//  Meme Creator
//
//  Created by Ben Clarke on 18/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    
    @IBOutlet weak var imgViewContainer: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topTxtBtn: UIButton!
    @IBOutlet weak var bottomTxtBtn: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var colourBtn: UIButton!
    
    var topText = ""
    var bottomText = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        navigationController?.isNavigationBarHidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "CREATE 🎨"
        setUpUI()
        
        let backBtn = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .done, target: self, action: #selector(goBackToPriorVC))
        backBtn.tintColor = UIColor(named: K.colourSchemes.lightTurq)
        navigationItem.leftBarButtonItem = backBtn
        
        let addBtn = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addImage))
        navigationItem.rightBarButtonItem = addBtn
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    
    @objc func goBackToPriorVC() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func addImage() {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage]  as? UIImage else { return }
        
        imageView.image = image
        
        // Persist to disk
        /*
         let imageName = UUID().uuidString // Unique filename
         let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
         
         // Convert to JPEG, write to disk
         if let jpegData = image.jpegData(compressionQuality: 0.8) {
         try? jpegData.write(to: imagePath)
         }*/
        
        dismiss(animated: true, completion: nil)
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func setUpUI() {
        imgViewContainer.layer.cornerRadius = 15
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 15
        
    }
    
    @IBAction func editTopText(_ sender: Any) {
        presentEditTextVC(location: "top")
    }
    
    @IBAction func editBottomText(_ sender: Any) {
        presentEditTextVC(location: "bottom")
        
    }
    
    @IBAction func textSliderChanged(_ sender: Any) {
        
    }
    
    @IBAction func fontColourPressed(_ sender: Any) {
        
        
    }
    
    
    func presentEditTextVC(location: String) {
        
        let ac = UIAlertController(title: "Enter text", message: "Please enter \(location) text", preferredStyle: .alert)
        ac.addTextField()
        
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        ac.addAction(UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let text = ac.textFields![0].text
            
            if location == "top" {
                
                self.topText = text ?? ""
                
            } else if  location == "bottom" {
                
                self.bottomText = text ?? ""
                
            }
            
        })
        
        
        present(ac, animated: true)
        
    }
    
    
}
