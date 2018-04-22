//
//  SentMemesCollectionViewController.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 4/15/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MemeCollectionViewCell"

class SentMemesCollectionViewController: UICollectionViewController {
    
    //MARK: Outlets
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let space:CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }
    
    //MARK: Action methods
    @IBAction func showMemeEditView(_ sender: Any) {
        let memeEditorVC = storyboard!.instantiateViewController(withIdentifier: "MemeEditorVC") as! MemeEditorVC
        navigationController?.present(memeEditorVC, animated: true, completion: nil)
    }
    
    //MARK: UICollectionViewDataSource methods
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MemeCollectionViewCell
        let meme = memes[(indexPath as NSIndexPath).row]
        
        // Set the meme image
        cell.memeImage.image = meme.memedImage
        
        return cell
    }
    
    //MARK: UICollectionViewDelegate methods
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "MemeDetailVC") as! MemeDetailVC
        let meme = memes[(indexPath as NSIndexPath).row]
        detailVC.meme = meme
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
}
