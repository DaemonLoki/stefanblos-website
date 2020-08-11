//
//  Theme+ItemHTML.swift
//  
//
//  Created by Stefan Blos on 11.08.20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func itemHtml<Site: Website>(for item: Item<Site>,
        context: PublishingContext<Site>) -> Node {
        return .article(
            .tagList(for: item, on: context.site),
            .dateTime(for: item.date, className: nil),
            .div(
                .class("content"),
                .contentBody(item.body)
            )
            
        )
    }
}
