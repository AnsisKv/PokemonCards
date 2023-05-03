//
//  PokeyTableViewCell.swift
//  PokemonCards
//
//  Created by kvelde.niklavs.ansis on 21/04/2023.
//

import UIKit
import SDWebImage

class PokeyTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeyImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var supertypeLabel: UILabel!
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    
    func setupUI(withDataFrom card: Card){
        
        nameLabel.text = "Name: " + card.name
        hpLabel.text = "Health points: " + (card.hp ?? "0")
        supertypeLabel.text = (card.supertype ?? "")
        pokeyImageView.sd_setImage(with: URL(string: card.imageURL))

        if card.supertype == "Trainer" {
                backgroundColor = UIColor.yellow
        } else {
            backgroundColor = UIColor.white
        }
    }
    
}
