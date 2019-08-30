//
//  manageCell.swift
//  tableview
//
//  Created by hoanglinh on 8/30/19.
//  Copyright © 2019 hoanglinh. All rights reserved.
//

import UIKit

class manageCell: UITableViewCell {

    @IBOutlet weak var CategoryName: UILabel!
    @IBOutlet weak var ImgHinh: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
