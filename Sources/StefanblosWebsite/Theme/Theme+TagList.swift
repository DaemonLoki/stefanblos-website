//
//  Theme+TagList.swift
//  
//
//  Created by Stefan Blos on 11.08.20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func tagList<T: Website>(for item: Item<T>, on site: T) -> Node {
        return .div(
            .class("tag-list"),
            .ul(
                .forEach(item.tags) { tag in
                    .li(
                        .a(
                            .href(site.path(for: tag)),
                            .text(tag.string)
                        )
                    )
                }
            )
        )
    }
}
