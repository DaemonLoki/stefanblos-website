//
//  Theme+ItemList.swift
//  
//
//  Created by Stefan Blos on 11.08.20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    
    static func itemList<T: Website>(for items: [Item<T>], on site: T) -> Node {
        return .ul(
            .class("item-list"),
            .forEach(items) { item in
                .li(.article(
                    .a(
                        .href(item.path),
                        .div(
                            .h1(
                                .text(item.title)
                            ),
                            .dateTime(for: item.date, className: "item-date"),
                            .tagList(for: item, on: site),
                            .p(.text(item.description))
                        )
                    )
                )
            )}
        )
    }
}
