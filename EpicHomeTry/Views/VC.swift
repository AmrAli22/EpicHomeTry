//
//  ViewController.swift
//  EpicHomeTry
//
//  Created by Amr on 07/10/2021.
//

import UIKit
import SnapKit

class VC: UIViewController {
    
    //MARK: - Presnter
    var pres : presnter!
    
    //MARK: - TableView
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.separatorColor = .lightGray
        tv.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        tv.layer.cornerRadius = 8
        tv.backgroundColor = .clear
        tv.delegate = self
        tv.dataSource = self
        tv.separatorStyle = .none
        return tv
    }()
    
    //MARK: - Pager
    lazy var  pagerView = UIView()
    lazy var scrollView =
        UIScrollView(frame: CGRect(x:0, y:0,width:self.view.frame.width,height: 140))
    lazy var frame: CGRect = CGRect(x:0, y:0, width:0, height:0)
    lazy var pageControl = UIPageControl()
    
    //MARK: - FiltersCollectionView
   // lazy var  HeaderView = UIView()
    lazy var HeaderView: UIView = {
        let hv = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        hv.backgroundColor = .white
        return hv
    }()
    
    
    lazy var FiltersCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.register(FiltersCollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 1
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()

    
    let FilterOneCell = UITableViewCell()
    
     lazy var SectionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Section"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        return label
    }()

    
    lazy var FiltersOneCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.register(FilterOneCollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 1
        cv.backgroundColor = .blue
        cv.showsHorizontalScrollIndicator = false
        return cv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pres = presnter()
        configurePageControlImages()
        anchorTableViewElemntes()
        anchorHeaderView()
        
        tableView.reloadData()
        
        
    }
}

