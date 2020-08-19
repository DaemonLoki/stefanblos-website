//
//  File.swift
//  
//
//  Created by Stefan Blos on 29.07.20.
//

import Plot
import Foundation

public extension Node where Context: HTML.BodyContext {
    
    static func time(_ nodes: Node<HTML.BodyContext>...) -> Node {
        .element(named: "time", nodes: nodes)
    }
    
    static func svg(_ nodes: Node<HTML.BodyContext>...) -> Node {
        .element(named: "svg", nodes: nodes)
    }
    
    static func dateTime(for date: Date, className: String?) -> Node {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        if let className = className {
            return .time(.class(className), .attribute(named: "datetime", value: formatter.string(from: date)), .text("\(formatter.string(from: date))"))
        }
        return .time(.attribute(named: "datetime", value: formatter.string(from: date)), .text("\(formatter.string(from: date))"))
    }
    
}
