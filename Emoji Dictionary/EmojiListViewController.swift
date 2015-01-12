//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Adam Walker on 1/7/15.
//  Copyright (c) 2015 Adam Walker. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //These are the emoji icons
    var emojis = ["😄","😃","😀","😊","☺","😉","😍","😘","😚","😗","😙","😜","😝","😛","😳","😁","😔","😌","😒","😞","😣","😢","😂","😭","😪","😥","😰","😅","😓","😩","😫","😨","😱","😠","😡","😤","😖","😆","😋","😷","😎","😴","😵","😲","😟","😦","😧","😈","👿","😮","😬","😐","😕","😯","😶","😇","😏","😑","👲","👳","👮","👷","💂","👶","👦","👧","👨","👩","👴","👵","👱","👼","👸","😺","😸","😻","😽","😼","🙀","😿","😹","😾","👹","👺","🙈","🙉","🙊","💀","👽","💩","🔥","✨","🌟","💫","💥","💢","💦","💧","💤","💨","👂","👀","👃","👅","👄","👍","👎","👌","👊","✊","✌","👋","✋","👐","👆","👇","👉","👈","🙌","🙏","☝","👏","💪","🚶","🏃","💃","👫","👪","👬","👭","💏","💑","👯","🙆","🙅","💁","🙋","💆","💇","💅","👰","🙎","🙍","🙇","🎩","👑","👒","👟","👞","👡","👠","👢","👕","👔","👚","👗","🎽","👖","👘","👙","💼","👜","👝","👛","👓","🎀","🌂","💄","💛","💙","💜","💚","❤","💔","💗","💓","💕","💖","💞","💘","💌","💋","💍","💎","👤","👥","💬","👣","💭"]
    
    
    //These are the emoji definitions
    
    
    var emojiDefinitions = ["Smiling Face With Open Mouth and Smiling Eyes","Smiling Face with Open Mouth","Grinning Face","Smiling Face With Smiling Eyes","White Smiling Face","Winking Face","Smiling Face With Heart-Shaped Eyes","Face Throwing A Kiss","Kissing Face With Closed Eyes","Kissing Face","Kissing Face With Smiling Eyes","Face With Stuck-Out Tongue And Winking Eye","Face With Stuck-Out Tongue and Tightly-Closed Eyes","Face With Stuck-Out Tongue","Flushed Face","Grinning Face With Smiling Eyes","Pensive Face","Relieved Face","Unamused Face","Disappointed Face","Persevering Face","Crying Face","Face With Tears of Joy","Loudly Crying Face","Sleepy Face","Disappointed But Relieved Face","Face With Open Mouth And Cold Sweat","Smiling Face With Open Mouth And Cold Sweat","Face With Cold Sweat","Weary Face","Tired Face","Fearful Face","Face Screaming In Fear","Angry Face","Pouting Face","Face With Look Of Triumph","Confounded Face","Smiling Face With Open Mouth And Tightly-Closed Eyes","Face Savoring Delicious Food","Face With Medical Mask","Smiling Face With Sunglasses","Sleeping Face","Dizzy Face","Astonished Face","Worried Face","Frowning Face With Open Mouth","Anguished Face","Smiling Face With Horns","Imp","Face With Open Mouth","Grimacing Face","Neutral Face","Confused Face","Hushed Face","Face Without Mouth","Smiling Face With Halo","Smirking Face","Expressionless Face","Man With Gua Pi Mao","Man With Turban","Police Officer","Contruction Worker","Guardsman","Baby","Boy","Girl","Man","Woman","Older Man","Older Woman","Person With Blond Hair","Baby Angel","Princess","Smiling Cat Face With Open Mouth","Grinning Cat Face With Smiling Eyes","Smiling Cate Face With Heart-Shaped Eyes","Kissing Cat Face With Closed Eyes","Cat Face With Wry Smile","Weary Cat Face","Crying Cat Face","Cat Face With Tears Of Joy","Pouting Cat Face","Japanese Ogre","Japanese Goblin","See-No-Evil Monkey","Hear-No-Evil Monkey","Speak-No-Evil Monkey","Skull","Extraterrestrial Alien","Pile Of Poo","Fire","Sparkles","Glowing Star","Dizzy Symbol","Collision Symbol","Anger Symbol","Splashing Sweat Symbol","Droplet","Sleeping Symbol","Dash Symbol","Ear","Eyes","Nose","Tongue","Mouth","Thumbs Up Sign","Thumbs Down Sign","Ok Hand Sign","Fisted Hand Sign","Raised Fist","Victory Hand","Waving Hand Sign","Raised Hand","Open Hands Sign","White Up Pointing Backhand Index","White Down Pointing Backhand Index","White Right Pointing Backhand Index","White Left Pointing Backhand Index","Person Raising Both Hands In Celebration","Person WIth Folded Hands","White Up Pointing Index","Clapping Hands Sign","Flexed Biceps","Pedestrian","Runner","Dancer","Man And Woman Holding Hands","Family","Two Men HOlding Hands","Two Women Holding Hands","Kiss","Couple With Heart","Woman With Bunny Ears","Face With Ok Gesture","Face With No Good Gesture","Information Desk Person","Happy Person Raising One Hand","Face Massage","Haircut","Nail Polish","Bride With Veil","Person With Pouting Face","Person Frowning","Person Bowing Deeply","Top Hat","Crown","Woman's Hat","Athletic Shoe","Man's Shoe","Woman's Sandal","High-Heeled Shoe","Woman's Boots","T-Shirt","Necktie","Woman's Clothes","Dress","Running Shirt With Sash","Jeans","Kimono","Bikini","Briefcase","Handbag","Pouch","Purse","Eyeglasses","Ribbon","Closed Umbrella","Lipstick","Yellow Heart","Blue Heart","Purple Heart","Green Heart","Heavy Black Heart","Broken Heart","Growing Heart","Beating Heart","Two Hearts","Sparkling Heart","Revolving Hearts","Heart With Arrow","Love Letter","Kiss Mark","Ring","Gem Stone","Bust In Silhouette","Busts In Silhouette","Speech Balloon","Footprints","Thought Balloon"]
    
    var emoji = "💀"
    var emojiDefinition = "smiley"
    override func viewDidLoad() {
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell
    {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        
        cell.backgroundColor = UIColor.blueColor()
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.emojiDefinition = self.emojiDefinitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
    
        detailViewController.emoji = self.emoji
        detailViewController.emojiDefinition = self.emojiDefinition
    }
}


