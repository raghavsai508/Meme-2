//
//  MemeTableVC.swift
//  MemeMe-1
//
//  Created by Raghav Sai Cheedalla on 4/15/18.
//  Copyright © 2018 SwiftEnthusiast. All rights reserved.
//

import UIKit

class MemeTableVC: UITableViewController {

    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView?.reloadData()
    }
    
    //MARK: Action methds
    
    @IBAction func showMemeEditView(_ sender: Any) {
        let memeEditorVC = storyboard!.instantiateViewController(withIdentifier: "MemeEditorVC") as! MemeEditorVC
        navigationController?.present(memeEditorVC, animated: true, completion: nil)
    }
    
    // MARK: UITableViewDataSource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell") as! MemeTableViewCell
        let meme = memes[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.memeTitleLabel.text = meme.topText + ".." + meme.bottomText
        cell.memeImage.image = meme.memedImage
        
        return cell
    }

    //MARK: UITableViewDelegate methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard!.instantiateViewController(withIdentifier: "MemeDetailVC") as! MemeDetailVC
        let meme = memes[(indexPath as NSIndexPath).row]
        detailVC.meme = meme
        navigationController?.pushViewController(detailVC, animated: true)
    }
    
    

}
