//
//  ViewController.swift
//  TableViewOpenClose
//
//  Created by Thiago Monteiro on 11/02/22.
//
import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    private var loginView: MainView

    // MARK: - Lifecicle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Section Cells"
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    init() {
        self.loginView = MainView()
        super.init(nibName: nil, bundle: nil)
        
        self.loginView.customTableView.delegate = self
        self.loginView.customTableView.dataSource = self
     
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if data[indexPath.section].isOpen == true {
            data[indexPath.section].isOpen = false
            let section = IndexSet.init(integer: indexPath.section)
            self.loginView.customTableView.reloadSections(section, with: .none)
        } else {
            data[indexPath.section].isOpen = true
            let section = IndexSet.init(integer: indexPath.section)
            self.loginView.customTableView.reloadSections(section, with: .none)
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if data[section].isOpen == true {
            return data[section].sectionData.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = data[indexPath.section].title
            cell?.selectionStyle = .none
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
            cell?.textLabel?.text = data[indexPath.section].sectionData[indexPath.row]
            cell?.selectionStyle = .none
            return cell ?? UITableViewCell()
        }
    }
}

