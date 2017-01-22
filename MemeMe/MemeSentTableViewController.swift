//
//  MemeSentTableViewController.swift
//  MemeMe
//
//  Created by Juan Salcedo on 1/19/17.
//  Copyright © 2017 Juan Salcedo. All rights reserved.
//

import UIKit

class MemeSentTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    
    var memes: [Meme]!
    @IBOutlet weak var sentTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        
        if memes.count > 0 {
        
            self.sentTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("numberOfRowsInSection")
        return memes.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("cellForRowAt")
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeSentCell", for: indexPath) as! MemeSentTableViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        cell.memeImageView?.image = meme.memedImage
        cell.memeLabelTop.text = meme.topText
        cell.memeLabelBottom.text = meme.bottomText
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }

    
    @IBAction func showMemeEditor(_ sender: Any) {
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        let editorVC = storyboard.instantiateViewController(withIdentifier: "MemeEditorViewController")as! MemeEditorViewController
        self.present(editorVC, animated: true, completion: nil)
        //self.navigationController!.pushViewController(editorVC, animated: true)

    }
}
