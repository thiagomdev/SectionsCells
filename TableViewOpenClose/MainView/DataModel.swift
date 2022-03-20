//
//  DataModel.swift
//  TableViewOpenClose
//
//  Created by Thiago Monteiro on 11/02/22.
//

import UIKit

struct DataModel {
    var isOpen = Bool()
    var title = String()
    var sectionData = [String]()
}

var data = [
    DataModel(isOpen: false, title: "Nike", sectionData: ["Nike Air", "Blue Nike", "T-Shirt Yellow", "Moleton", "Pulseira", "Boné"]),
    DataModel(isOpen: false, title: "Adidas", sectionData: ["Calça", "Blusa", "Boné", "Colar Feminino", "Tênis"]),
]
