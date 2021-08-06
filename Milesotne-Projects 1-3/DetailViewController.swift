//
//  DetailViewController.swift
//  Milesotne-Projects 1-3
//
//  Created by othman shahrouri on 8/6/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    
    var selectedFlag:String?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let imageToLoad = selectedFlag{
            print(imageToLoad)
            imageView.image =  UIImage(named: imageToLoad)
            
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
    }
    
    
    @objc func shareTapped(){
        let items = [selectedFlag,imageView.image] as [Any]
        
        let vc = UIActivityViewController(activityItems: items, applicationActivities: [])
        present(vc,animated: true)
    }
    
    
}
