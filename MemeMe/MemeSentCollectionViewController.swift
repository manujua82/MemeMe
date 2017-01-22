//
//  MemeSentCollectionViewController.swift
//  MemeMe
//
//  Created by Juan Salcedo on 1/21/17.
//  Copyright © 2017 Juan Salcedo. All rights reserved.
//

import UIKit
class MemeSentCollectionViewController: UICollectionViewController {

    var memes: [Meme]!
    @IBOutlet var sentCollectionView: UICollectionView!
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        self.flowLayout.minimumInteritemSpacing = 0
        self.flowLayout.minimumLineSpacing = space
        self.flowLayout.itemSize = CGSize(width: dimension, height: dimension)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        sentCollectionView.reloadData()
    }

    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SentCollectionCell", for: indexPath) as! MemeSentCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.memeImageView?.autoresizingMask = [.flexibleBottomMargin, .flexibleHeight, .flexibleRightMargin, .flexibleLeftMargin, .flexibleTopMargin, .flexibleWidth]
        cell.memeImageView?.contentMode = .scaleAspectFill
        cell.memeImageView.image = meme.memedImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }

   
    @IBAction func showMemeEditor(_ sender: Any) {
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let editorVC = storyboard.instantiateViewController(withIdentifier: "MemeEditorViewController")as! MemeEditorViewController
        self.present(editorVC, animated: true, completion: nil)
    }
}
