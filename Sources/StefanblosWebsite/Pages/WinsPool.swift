//
//  File.swift
//  
//
//  Created by Stefan Blos on 22.12.20.
//

import Foundation
import Publish
import Plot

public extension Node where Context: HTML.BodyContext {
    static var winspoolPage: Node {
        return .section(
            .img(.class("app-logo-image"), .src("../../images/winspool-icon.png"), .alt("Logo of the Winspool app.")),
            .p(.text("Have fun with your friends and create an NBA Winspool. Pick your favorite teams in an exciting draft and see whose teams rock the most during the regular season!")),
            .h2(.text("What is it?")),
            .p(.text("Winspool is your one-stop app for creating and managing a Winspool with your friends. Get a group of 10 friends together and draft your favorite (and your not-so-favorite) teams to compete during the regular season. If your teams win the scores are directly and automatically refreshed inside the app to see who is on top on a day-to-day basis.")),
            .p(.text("Finally you can settle who has the most knowledge (or the best randomly selected pick order) when it comes to basketball. Is it you?")),
            .h2(.text("Find friends")),
            .p(.text("Invite other people to join your WinsPools. Because it's more fun together!")),
            .h2(.text("Pick your teams")),
            .p(.text("Select the teams that you think will perform best during the season. It's all about winning!")),
            .h2(.text("Watch the games")),
            .p(.text("Follow how your teams perform during the season. When they win, you'll get points in your WinsPool.")),
            .h2(.text("Win it all")),
            .p(.text("The member who's teams gather the most points comes out as the winner. Endless glory and fun awaits you!"))
        )
    }
    
    static var winspoolPrivacyPage: Node {
        return .section(
            .h2(.text("Privacy policy for Winspool")),
            .p(.text("Your privacy is important to me. It is my policy to respect your privacy regarding any information that may be collected from you through the Winspool app.")),
            .p(.text("i only ask for personal information when I truly need it to provide a service to you. I collect it by fair and lawful means, with your knowledge and consent. I also let you know why I'm collecting it and how it will be used.")),
            .p(.text("I only retain collected information for as long as necessary to provide you with your requested service. I'll protect the stored data within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.")),
            .p(.text("I don’t share any personally identifying information publicly or with third-parties, except when required to by law.")),
            .p(.text("This app may link to external sites that are not operated by me. Please be aware that I have no control over the content and practices of these sites, and cannot accept responsibility or liability for their respective privacy policies.")),
           .p(.text("Your continued use of my app will be regarded as acceptance of my practices around privacy and personal information. If you have any questions about how I handle user data and personal information, feel free to contact me via mail or the App Store.")),
            .p(.text("This policy is effective as of 22 December 2020."))
        )
    }
}

