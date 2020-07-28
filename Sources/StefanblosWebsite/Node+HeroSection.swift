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
             .h3(.text("Hello, I'm")),
             .h1(.text("Stefan Blos")),
             .h2(.text("Software Engineer")),
             .p(.text("\"I’m a passionate iOS / ML / mobile developer who loves to experiment and write about tech.\"")))
    }
}
