//
//  ExpandingTableViewCell.swift
//  ExpandingTableSample
//
//  Created by cano on 2019/03/20.
//  Copyright © 2019 deskplate. All rights reserved.
//

import UIKit

// セルに表示するデータを格納するクラス
class ExpandingTableViewCellContent {
    var title: String?
    var subtitle: String?
    var expanded: Bool

    init(title: String, subtitle: String) {
        self.title = title
        self.subtitle = subtitle
        self.expanded = false
    }
}

class ExpandingTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func set(content: ExpandingTableViewCellContent) {
        self.titleLabel.text = content.title
        self.subtitleLabel.text = content.expanded ? content.subtitle : ""
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
