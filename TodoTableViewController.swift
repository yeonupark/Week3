//
//  TodoTableViewController.swift
//  Week3
//
//  Created by 마르 on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {
    
    @IBOutlet var newTodoTextField: UITextField!
    var list = ["장보기", "영화보기", "잠자기", "코드보기", "과제하기", "복습하기", "쉬기", "밥먹기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = .white
        newTodoTextField.backgroundColor = .white
        print("ㅠㅠ")

    }
    
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        
        showAlert()
        
        // 1. 리스트에 요소 추가
        list.append("유튜브보기")
        print(list)
        // 2. 테이블 뷰 갱신
        tableView.reloadData()
    }
    
    @IBAction func textFieldClicked(_ sender: Any) {
        guard let text = newTodoTextField.text else {
            print("내용 업슴")
            return
        }
        if text.count == 0{
            return
        }
        list.append(text)
        tableView.reloadData()
    }
    
    
    // 1. 섹션 내 셀의 개수: 카톡 친구 수만큼 셀 개수가 필요해 라고 iOS에게 전달
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
 
    // 2. 셀 디자인 및 데이터 처리: 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메세지 반영 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(#function, indexPath)
        
        //Identifier는 인터페이스 빌더에서 설정! // 재사용 메커니즘
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
        
        cell.textLabel?.text = list[indexPath.row]
        
        cell.textLabel?.configureTitleText()
        
        cell.detailTextLabel?.text = "디테일 텍스트"
        cell.detailTextLabel?.textColor = .blue
        cell.detailTextLabel?.font = .systemFont(ofSize: 15)
        
        cell.imageView?.image = UIImage(systemName: "star.fill")

        return cell
        
    }
    
    // 3. 셀의 높이: 설정앱에서는 44가 기본
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
