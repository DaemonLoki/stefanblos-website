//
//  Theme+ItemHTML.swift
//  
//
//  Created by Stefan Blos on 11.08.20.
//

import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func itemHtml<Site: Website>(for item: Item<Site>,
                                        context: PublishingContext<Site>) -> Node {
        return .article(
            .tagList(for: item, on: context.site),
            .postHeader(published: item.date),
            .div(
                .class("content"),
                .contentBody(item.body)
            )
        )
    }
    
    private static func postHeader(published date: Date) -> Node {
        return .div(
            .class("post-head"),
            .img(.class("post-head-image"), .src("../../images/hero.jpg"), .alt("Image of Stefan presenting to a crowd.")),
            .p(.text("Stefan Blos"),.br(),
               .dateTime(for: date, className: nil))
        )
    }
}
