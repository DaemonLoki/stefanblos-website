//
//  File.swift
//  
//
//  Created by Stefan Blos on 28.07.20.
//

import Plot

public extension Node where Context: HTML.BodyContext {
    
    static var heroSection: Node {
        .div(.class("hero-section"),
             .div(.class("text-container"), 
                  .p(.class("intro-text"), .text("Hello".uppercased())),
                  .h1(.text("I'm "), .span(.class("highlight-text"), "Stefan"), .text(" Blos")),
                .p(.class("intro-quote"), .text("A passionate iOS / machine learning / mobile developer who loves to experiment and write about tech."))),
             .div(.class("hero-image"))
        )
    }
}
