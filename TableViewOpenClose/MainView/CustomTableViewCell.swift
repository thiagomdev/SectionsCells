//
//  CustomTableViewCell.swift
//  TableViewOpenClose
//
//  Created by Thiago Monteiro on 11/02/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = CustomTableViewCell.self.description()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
