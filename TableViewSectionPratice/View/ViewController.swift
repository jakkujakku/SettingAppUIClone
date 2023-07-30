//
//  ViewController.swift
//  TableViewSectionPratice
//
//  Created by (^ㅗ^)7 iMac on 2023/07/25.
//

import UIKit

// 데이터 구성 프로토콜 - 수정할 일이 없기에 get 사용.
protocol SettingModel {
    var iconImage: String { get }
    var cellName: String { get }
    var cellState: String { get }
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    // 각 섹션을 구성하는 셀들에 들어갈 데이터 리스트
    let profileList : [Model] = Model.profileList
    let networkSettingList : [Model] = Model.networkSettingList
    let alarmList : [Model] = Model.alarmList
    let settingList : [Model] = Model.settingList
    let payList : [Model] = Model.payList
    let basicProductionList : [Model] = Model.basicProductionList
    let itunesList : [Model] = Model.itunesList
    let developerModeList : [Model] = Model.developerModeList
   
    // 전체 섹션 개수 반환
    let listArray = [Model.profileList, Model.networkSettingList, Model.alarmList, Model.settingList, Model.payList, Model.basicProductionList, Model.itunesList, Model.developerModeList]
    
    // 색상 배열
    let networkColor: [UIColor] = [.systemOrange, .systemBlue, .systemBlue, .systemGreen, .systemGreen, .systemBlue]
    let alarmColor: [UIColor] = [.systemRed, .systemRed, .systemPurple, .systemPurple]
    let settingColor: [UIColor] = [.systemGray, .systemGray, .systemBlue, .blue, .systemBlue, .systemMint, .black, .systemGreen, .systemRed, .systemRed, .systemGreen, .systemBlue]
    let payColor: [UIColor] = [.systemBlue, .black]
    let productionColor: [UIColor] = [.systemGray, .systemBlue, .systemGreen, .systemPink, .systemYellow, .systemBlue, .systemPink, .black, .systemGreen, .systemGreen, .systemGreen, .systemBlue, .black, .systemBlue, .black, .systemGreen, .black, .black, .purple, .systemPink]
    let itunesColor: [UIColor] = [.systemPink, .black, .systemCyan, .systemGray, .systemOrange, .systemPurple, .systemOrange, .systemYellow]
    let developer: [UIColor] = [.systemBlue]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureNavigationTitle()
        addSearchBar()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .lightGray.withAlphaComponent(0.15)
        
    }
    
    @objc func top(_ sender: UISwipeGestureRecognizer) {
        
        print("동작동작")
    }
    
    func configureNavigationTitle() {
        navigationItem.title = "설정"
        // Navigation의 title을 크게 보기 설정
        navigationController?.navigationBar.prefersLargeTitles = true
        // 스크롤시 Navigation의 title을 어떻게 보여줄 것인가 설정
        navigationItem.largeTitleDisplayMode = .always
    }
    
    func addSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        //        검색컨트롤러는 검색하는 동안 네비게이션바에 가려지지않도록한다
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.navigationItem.hidesSearchBarWhenScrolling = true
        
        self.navigationItem.searchController = searchController

    }
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        tableView.rowHeight = 44
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return profileList.count
        } else if section == 1 {
            return networkSettingList.count
        } else if section == 2 {
            return alarmList.count
        } else if section == 3 {
            return settingList.count
        } else if section == 4 {
            return payList.count
        } else if section == 5 {
            return basicProductionList.count
        } else if section == 6 {
            return itunesList.count
        } else if section == 7 {
            return developerModeList.count
        }  else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.section

        // Profile
        if index == 0 {
            tableView.register(UINib(nibName: "ProfileCell", bundle: nil), forCellReuseIdentifier: "ProfileCell")
            
            tableView.rowHeight = 86
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath) as? ProfileCell else { return UITableViewCell() }
            let list = profileList[indexPath.item]
            cell.configure(list)
            cell.accessoryType = .disclosureIndicator
            return cell
         
            // network
        } else if index == 1 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            let list = networkSettingList[indexPath.item]

            tableView.rowHeight = 44
            cell.layerView.backgroundColor = networkColor[indexPath.item]
            
            if index == 1 && indexPath.row == 0 {
                cell.configure(list)
                cell.onOffSwitch.isHidden = false
                cell.onOffSwitch.isOn = false
                cell.cellStateLabel.isHidden = true
                cell.accessoryType = .none
                return cell
            }
            
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            
            cell.accessoryType = .disclosureIndicator
            return cell
           
            // alarm
        } else if index == 2 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = alarmColor[indexPath.item]
            
            let list = alarmList[indexPath.item]
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
            // setting
        } else if index == 3 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = settingColor[indexPath.item]
            
            let list = settingList[indexPath.item]

            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
            // pay
        } else if index == 4 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")

            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = payColor[indexPath.item]
            
            let list = payList[indexPath.item]
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
            // production
        } else if index == 5 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = productionColor[indexPath.item]
            
            let list = basicProductionList[indexPath.item]
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
            // itunes
        } else if index == 6 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = itunesColor[indexPath.item]
            
            let list = itunesList[indexPath.item]
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
            // developer
        } else if index == 7 {
            tableView.register(UINib(nibName: "ReuseableCell", bundle: nil), forCellReuseIdentifier: "ReuseableCell")
            
           
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseableCell", for: indexPath) as? ReuseableCell else { return UITableViewCell() }
            
            tableView.rowHeight = 44
            cell.layerView.backgroundColor = developer[indexPath.item]
            
            let list = developerModeList[indexPath.item]
            cell.configure(list)
            cell.onOffSwitch.isHidden = true
            cell.accessoryType = .disclosureIndicator
            return cell
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return ""
        }
        return " "
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return listArray.count
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.item
        print(index)
        tableView.reloadData()
    }
    
}

