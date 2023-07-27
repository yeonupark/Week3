//
//  StudyTableViewController.swift
//  Week3
//
//  Created by 마르 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {

    let list = ["변수", "상수", "열거형", "옵셔널 바인딩", "메서드", "프로퍼티"]
    let appleList = ["아이폰", "아이팟", "맥북", "에어팟", "아이패드"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .white
        // 모든 셀이 같은 높이를 갖고 있다면 따로 메소드 생성하기 보다 이렇게 한줄로 처리
        tableView.rowHeight = 60

    }
    
    // 얘를 쓰지 않으면 섹션 개수가 디폴트로 하나로 설정됨
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "첫번째 섹션" : "두번째 섹션"
    }
    
    // 필수 메소드 1. 섹션 내 셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? list.count : appleList.count
    }
    
    // 필수 메소드 2. 셀 데이터 및 디자인 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // identifier에 맞는 셀이 없을 수 있기 때문에 옵셔널로 반환을 해줌 -> 해제가 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        if indexPath.section == 0 {
            cell.textLabel?.text =  list[indexPath.row]
            // cell.detailTextLabel?.text 물음표 뜨는거 크게 신경 노노
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
            
        cell.backgroundColor = .white
        cell.textLabel?.textColor = .black
        
        return cell
    }
    
    // 3. 셀의 높이: 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 비효율적일 수 있음. 요 함수 계속 호출됨
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.row % 2 == 0 {
//            return 50
//        } else {
//            return 75
//        }
//    }
    
}
