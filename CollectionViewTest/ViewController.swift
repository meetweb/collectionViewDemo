//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by lzy on 2017/10/13.
//  Copyright © 2017年 lzy. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var cv: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        cv.dataSource=self
        cv.delegate=self
    }
    
    func initWidge(){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //实现UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let mycell="cell"
        var cell=cv.dequeueReusableCell(withReuseIdentifier: mycell, for: indexPath) as UICollectionViewCell
        //   (cell.contentView.viewWithTag(1) as! UILabel).frame=CGRect(x: 0, y: 60, width: 80, height: 20)
      /**
        (cell.contentView.viewWithTag(1) as! UILabel).text=courses[indexPath.item]["name"]
        (cell.contentView.viewWithTag(1) as! UILabel).textAlignment=NSTextAlignment.center
        (cell.contentView.viewWithTag(1) as! UILabel).backgroundColor=UIColor.red
        
        (cell.contentView.viewWithTag(2) as! UIImageView).image=UIImage(named: "lock")
        **/
        (cell.contentView.viewWithTag(1) as! UILabel).text="add"
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let frame = self.view.frame;
        var width = frame.width
        width = CGFloat(Int(width/3)-10)
        return CGSize(width: width, height: width)
    }
    
    

}

