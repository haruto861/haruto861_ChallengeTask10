//
//  ViewController.swift
//  ChallengeTask10
//
//  Created by 松島悠人 on 2021/02/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet private weak var tableView: UITableView!
    private let prefectures: [String] = ["北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県","茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県","新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県","静岡県","愛知県","三重県","滋賀県","京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県","島根県","岡山県", "広島県","山口県","徳島県","香川県","愛媛県","高知県", "福岡県","佐賀県", "長崎県", "熊本県", "大分県", "宮崎県","鹿児島県", "沖縄県"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "prefectureTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Cell") 
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PrefectureTableViewCell
        cell.configure(
            prefectureName: prefectures[indexPath.row],
            row: indexPath.row
        )
        switch indexPath.row % 3 {
        case 0:
            cell.backgroundColor = #colorLiteral(red: 1, green: 0.8206560612, blue: 0.8154960871, alpha: 1)
        case 1:
            cell.backgroundColor = #colorLiteral(red: 0.8721580505, green: 0.967730701, blue: 0.6013033986, alpha: 1)
        case 2:
            cell.backgroundColor = #colorLiteral(red: 0.7769456506, green: 0.8170322776, blue: 0.9654322267, alpha: 1)
        default:
            return cell
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectures.count
    }
}

