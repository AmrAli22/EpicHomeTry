//
//  VC+TableviewExtension.swift
//  EpicHomeTry
//
//  Created by Amr on 08/10/2021.
//

import UIKit
extension VC {
    func anchorHeaderView(){
        HeaderView.addSubview(FiltersCollectionView)
        FiltersCollectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        self.tableView.tableHeaderView = HeaderView
        
    }
    
    func anchorTableViewElemntes(){
        //MARK: - TableView
        view.addSubview(pagerView)
        pagerView.backgroundColor = .white
        view.addSubview(tableView)
        tableView.backgroundColor = .white
    
        pagerView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalTo(140)
        }
        
        tableView.snp.makeConstraints { (make) -> Void in
              make.width.equalToSuperview()
              make.top.equalTo(pagerView.snp.bottom)
              make.centerX.equalToSuperview()
            make.bottom.equalToSuperview()
            
        }

        //MARK: - PageControlCell
        pagerView.addSubview(scrollView)
        pagerView.addSubview(pageControl)

        scrollView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        pageControl.snp.makeConstraints { make in
            make.bottom.equalTo(scrollView.snp.bottom)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
        }
        
        //MARK: - FilterOneCell
        FilterOneCell.contentView.addSubview(FiltersOneCollectionView)
        FilterOneCell.contentView.addSubview(SectionLabel)
        
        SectionLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.bottom.equalTo(FiltersOneCollectionView.snp.top)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
        FiltersOneCollectionView.snp.makeConstraints { make in
            make.top.equalTo(SectionLabel.snp.bottom).offset(20)
            make.bottom.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        
    }
}



extension VC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pres.numberOfSections
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
          return FilterOneCell
        default:
            let cell = UITableViewCell()
            cell.backgroundColor = .white
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
}
