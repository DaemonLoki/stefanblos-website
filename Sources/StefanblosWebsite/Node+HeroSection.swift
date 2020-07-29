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
                .p(.class("intro-text"), .text("Hello, I'm")),
                .h1(.text("Stefan Blos")),
                .p(.class("intro-quote"), .text("I’m a passionate iOS / ML / mobile developer who loves to experiment and write about tech."))),
             .img(.src("/images/hero.jpg"), .alt("Hero Image"))
        )
    }
}
