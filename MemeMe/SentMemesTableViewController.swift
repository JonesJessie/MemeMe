//
//  SentMemeTableViewController.swift
//  MemeMe 1.0
//
//  Created by Mac User on 2/25/19.
//  Copyright © 2019 Me. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
   // override func numberOfSections(in tableView: UITableView) -> Int {
    //    return 1
    //}
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)  -> Int{
       return memes.count
}
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
        tableView?.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")! as UITableViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = memes[indexPath.row].top + "..." + memes[indexPath.row].bottom
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        detailController.meme = memes[(indexPath as NSIndexPath).row]
        self.navigationController?.pushViewController(detailController, animated: true)
    }
}

