//
//  BMITableViewCell.swift
//  DeepMehta_FinalTest
//
//	Created by Deep Mehta on 16/12/22.
//  Final Exam - iOS Development
//  Description: Basic application for bmi calculator.
//

import UIKit

class BMITableViewCell: UITableViewCell {
    
	// Cell View for Table layout
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var BMIResultLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
