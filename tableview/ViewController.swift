//
//  ViewController.swift
//  tableview
//
//  Created by hoanglinh on 8/30/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var NameArray:[String] = ["Hung","Ha","Hieu","Huan","Huu","Han","Hau","Hoa","Hiep"]
    var ImgHinhArray:[String] = ["1","2","3","4","5","6","7","8","9"]
    @IBOutlet weak var ListProfile: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ListProfile.dataSource = self
        self.ListProfile.delegate = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "manageCell", for: indexPath) as! manageCell
        cell.CategoryName.text = NameArray[indexPath.row]
        cell.ImgHinh.image = UIImage(named: ImgHinhArray[indexPath.row])
        cell.CategoryName.textAlignment = .center
        cell.CategoryName.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        cell.ImgHinh.layer.cornerRadius = 10
        cell.ImgHinh.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        cell.ImgHinh.layer.borderWidth = 1
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped ")
    }
}

