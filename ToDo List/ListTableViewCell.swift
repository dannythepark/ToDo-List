//
//  ListTableViewCell.swift
//  ToDo List
//
//  Created by Danny Park on 2/27/22.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func checkBoxToggled(sender: ListTableViewCell)
    
    
}

class ListTableViewCell: UITableViewCell {
    
    weak var delegate: ListTableViewCellDelegate?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var checkBoxButton: UIButton!
    
    
    @IBAction func checkToggled(_ sender: UIButton) {
        delegate?.checkBoxToggled(sender: self)
    }
    
}
