//
//  CustomTableCell.swift
//  CoreDataEx
//
//  Created by mayank ranka on 10/05/23.
//

import UIKit

class CustomTableCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var mobileLabel: UILabel!
    
    var student : Student!{
        didSet{
            nameLabel.text = student.name
            addressLabel.text = student.address
            cityLabel.text = student.city
            mobileLabel.text = student.mobile
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        loadCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
//        loadCell()
    }
    
    
    
    
    
    //    var nameLabel       : UILabel!
    //    var addressLabel    : UILabel!
    //    var cityLabel       : UILabel!
    //    var mobileLabel     : UILabel!
    
//    func loadCell(){
//        if nameLabel == nil{
//            nameLabel = UILabel()
//            nameLabel.translatesAutoresizingMaskIntoConstraints = false
//            nameLabel.textAlignment = .center
//            self.addSubview(nameLabel)
//
//            NSLayoutConstraint.activate([
//                nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//                nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//                nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//                nameLabel.heightAnchor.constraint(equalToConstant: 30)
//            ])
//        }
//
//        if addressLabel == nil{
//            addressLabel = UILabel()
//            addressLabel.translatesAutoresizingMaskIntoConstraints = false
//            addressLabel.textAlignment = .center
//            self.addSubview(addressLabel)
//
//            NSLayoutConstraint.activate([
//                addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//                addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
//                addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//                addressLabel.heightAnchor.constraint(equalToConstant: 30)
//            ])
//        }
//
//        if cityLabel == nil{
//            cityLabel = UILabel()
//            cityLabel.translatesAutoresizingMaskIntoConstraints = false
//            cityLabel.textAlignment = .center
//            self.addSubview(cityLabel)
//
//            NSLayoutConstraint.activate([
//                cityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//                cityLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 10),
//                cityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//                cityLabel.heightAnchor.constraint(equalToConstant: 30)
//            ])
//        }
//
//        if mobileLabel == nil{
//            mobileLabel = UILabel()
//            mobileLabel.translatesAutoresizingMaskIntoConstraints = false
//            mobileLabel.textAlignment = .center
//            self.addSubview(mobileLabel)
//
//            NSLayoutConstraint.activate([
//                mobileLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//                mobileLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10),
//                mobileLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
//                mobileLabel.heightAnchor.constraint(equalToConstant: 30)
//            ])
//        }
//
//
//
//    }

}
