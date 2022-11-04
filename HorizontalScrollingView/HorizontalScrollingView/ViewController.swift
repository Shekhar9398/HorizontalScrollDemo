//
//  ViewController.swift
//  HorizontalScrollingView
//
//  Created by Shraddha Manwar on 13/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hzScrollingView: UICollectionView!
    
    var marvelPics = ["Avengers", "Loki" , "Xmen" , "Xmen1" , "DrStrange" , "Marvel" , "Groot" , "Cap" , "EndGame" , "Spiderman"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return marvelPics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = hzScrollingView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! HorizontalScrollingCell
        
        cell.contentView.backgroundColor = UIColor.black
        cell.myImageView.image = UIImage(named: marvelPics[indexPath.item])
        
        return cell
    }
    }

