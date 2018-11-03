//
//  TableViewCell.swift
//  ExerciseDelegate
//
//  Created by Trần Đức Anh on 11/2/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

protocol TableViewCellDelegate: class {
    func didSelectedBtn(at indexPath: IndexPath)
}

class TableViewCell: UITableViewCell {

    
    weak var delegate: TableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func onClickDeleteBtn(_ sender: UIButton) {
//        delegate?.didSelectedBtn(at: indexPath)
    }

}
