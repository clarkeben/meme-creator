//
//  LibraryTableViewController.swift
//  Meme Creator
//
//  Created by Ben Clarke on 28/08/2020.
//  Copyright © 2020 Ben Clarke. All rights reserved.
//

import UIKit

class LibraryTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = Library.returnImages()
    var selectedImg: String?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = false
        tableView.reloadLeftToRight()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        title = "LIBRARY 📚"
        
        let backBtn = UIBarButtonItem(image: UIImage(systemName: "arrow.left"), style: .done, target: self, action: #selector(goBackToPriorVC))
        backBtn.tintColor = UIColor(named: K.colourSchemes.lightTurq)
        navigationItem.leftBarButtonItem = backBtn
    }
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! LibraryTableViewCell
        
        cell.memeImageView.image = UIImage(named: data[indexPath.row].image)
        cell.memeNameLabel.text = data[indexPath.row].imageText
        
        //cell.memeImageView.layer.cornerRadius = 10
        cell.memeImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        cell.memeNameLabel.font = UIFont(name: "Helvetica", size: 20)
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedImg = data[indexPath.row].image
        
        performSegue(withIdentifier: K.Segues.createVC, sender: self)
    }
    
    @objc func goBackToPriorVC() {
        navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? CreateViewController {
            destinationVC.imgFromLibrary = selectedImg
        }
    }
    
}
