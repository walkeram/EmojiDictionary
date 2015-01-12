//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Adam Walker on 1/8/15.
//  Copyright (c) 2015 Adam Walker. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    var emoji = "💀"
    var emojiDefinition = "smiley"
    override func viewDidLoad() {
    self.emojiLabel.text = self.emoji
    self.emojiDefinitionLabel.text = self.emojiDefinition
    
    }
 }