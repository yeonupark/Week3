//
//  SettingTableViewController.swift
//  Week3
//
//  Created by 마르 on 2023/07/27.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let basicSetting = ["공지사항", "실험실", "버전정보"]
    let personalSetting = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let other = ["고객센터/도움말"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .black
        tableView.separatorColor = .darkGray

    }
    // 섹션 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    // 섹션 이름 지정
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title: String = ""
        switch section {
        case 0 : title = "전체 설정"
        case 1 : title = "개인 설정"
        case 2 : title = "기타"
        default : print("오류 발생")
        }
        return title
        
    }
    
     //1. 셀 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        if section == 0 {
            return basicSetting.count
        } else if section == 1 {
            return personalSetting.count
        } else if section == 2 {
            return other.count
        } else {
            print("오류 발생")
            return 0
        }

    }
    
    // 2. 셀 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        cell.backgroundColor = .black
        cell.textLabel?.textColor = .white
        
        if indexPath.section == 0 {
            cell.textLabel?.text = basicSetting[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = personalSetting[indexPath.row]
        } else if indexPath.section == 2 {
            cell.textLabel?.text = other[indexPath.row]
        } else {
            print("오류 발생")
        }
        return cell
    }

}
