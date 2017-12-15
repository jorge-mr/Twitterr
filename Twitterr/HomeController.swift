//
//  HomeController.swift
//  Twitterr
//
//  Created by Jorge MR on 14/12/17.
//  Copyright © 2017 jorge_a_mtz_r. All rights reserved.
//

import UIKit

class WordCell : UICollectionViewCell {
    //Clase customizable para las celdas del collection view
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    //metodo obligatorio
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let wordLabel : UILabel = {
        let label = UILabel()
        label.text = "TEXT TEXT TEXT"
        //permite aplicar constraints
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews(){
        backgroundColor = .yellow
        addSubview(wordLabel)
        //establece los constraints para que abarque toda la celda
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        wordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}

class HomeController : UICollectionViewController {
    
    let cellID = "cellID"
    let headerID = "headerID"
    let footerID = "footerID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        //Registra una WordCell con su identificador
        collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellID)
        //Registra una collectionViewCell del tipo Section Header con su identificador
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: headerID)
        //Registra una collectionViewCell del tipo Section Footer con su identificador
        collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionElementKindSectionFooter, withReuseIdentifier: footerID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        //Revisa si es header section, si no es footer section
        if kind == UICollectionElementKindSectionHeader {
            let headerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath)
            headerCell.backgroundColor = .blue
            return headerCell
        }else{
            let footerCell = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerID, for: indexPath)
            footerCell.backgroundColor = .green
            return footerCell
        }
    }
    
    
}

extension HomeController : UICollectionViewDelegateFlowLayout {
    //Tamaño para celdas normales
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    //Tamaño para la celda header (primera)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 70)
    }
    
    //Tamaño para la celda footer (ultima)
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
