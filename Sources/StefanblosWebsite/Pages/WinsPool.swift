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
}

