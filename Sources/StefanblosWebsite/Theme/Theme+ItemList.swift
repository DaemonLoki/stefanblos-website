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
                .li(
                    createContent(for: item, on: site)
                )}
        )
    }
    
    static func createItemList<T: Website>(by id: T.SectionID, with items: [Item<T>], on site: T) -> Node {
        guard let sectionId = id as? StefanBlosWebsite.SectionID else {
            return .div(.text("An error occurred. Mayday!"))
        }
        switch sectionId {
        case .posts:
            return itemList(for: items, on: site)
        case .about:
            return .aboutPage
        case .imprint:
            return .imprintPage
        }
        
    }
    
    private static func createContent<T: Website>(for item: Item<T>, on site: T) -> Node {
        return .article(
            .a(
                .href(item.path),
                .h1(.class("item-headline"),
                    .text(item.title)
                ),
                .p(.text(item.description)),
                .div(.class("bottom-container"),
                     .tagList(for: item, on: site),
                     .dateTime(for: item.date, className: "item-date")
                )
            )
        )
    }
}
