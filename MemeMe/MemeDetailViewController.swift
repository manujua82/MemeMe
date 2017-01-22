//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Juan Salcedo on 1/21/17.
//  Copyright © 2017 Juan Salcedo. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    // MARK: Properties
    var meme: Meme!
    
    // MARK: Outlets
    @IBOutlet weak var detailImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        detailImageView.image = meme.memedImage
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }

    
}
