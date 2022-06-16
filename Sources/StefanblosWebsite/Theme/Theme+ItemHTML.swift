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
        return .section(
            .article(
                .tagList(for: item, on: context.site),
                .postHeader(published: item.date),
                .div(
                    .class("content"),
                    .contentBody(item.body)
                )
            )
        )
    }
    
    private static func postHeader(published date: Date) -> Node {
        return .div(
            .class("post-head"),
            .div(.class("post-head-image"),
                 .img(
                    .src("../../images/hero-small.jpg"),
                    .alt("Image of Stefan presenting to a crowd.")
                 )
            ),
            .p(
                .a(
                    .href(URL(string: "https://twitter.com/stefanjblos")!),
                    .span(.text("Stefan Blos")),
                    .createSVG(viewBox: "0 0 24 24", path: .twitterPath)
                ),
                .dateTime(for: date, className: nil)
            )
        )
    }
}
