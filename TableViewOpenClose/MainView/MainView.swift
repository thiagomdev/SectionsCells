//
//  LoginView.swift
//  TableViewOpenClose
//
//  Created by Thiago Monteiro on 11/02/22.
//


import UIKit

class MainView: UIView {
    // MARK: - Properties
    
    // MARK: - Components
    lazy var customTableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .white
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    // MARK: - Lifecicle
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(customTableView)
        
        self.customTableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.customTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.customTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.customTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors
    
    // MARK: - Methods
}
