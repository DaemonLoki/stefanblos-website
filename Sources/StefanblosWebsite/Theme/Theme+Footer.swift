//
//  Theme+Footer.swift
//  
//
//  Created by Stefan Blos on 13.08.20.
//

import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    
    static func footer<T: Website>(for site: T) -> Node {
        return .footer(
            .p(
                .text("Generated using "),
                .a(
                    .text("Publish"),
                    .href("https://github.com/johnsundell/publish")
                )
            ),
            .p(.a(
                .text("RSS feed"),
                .href("/feed.rss")
                )),
            .p(.a(.text("Impressum"),
                  .href("/impressum"))
            )
        )
    }
    
}
