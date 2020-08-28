//
//  Theme+Header.swift
//  
//
//  Created by Stefan Blos on 10.08.20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    
    static func header<T: Website>(
        for context: PublishingContext<T>,
        selectedSection: T.SectionID?
    ) -> Node {
        //let sectionIDs = T.SectionID.allCases
        let sectionIDs: [StefanblosWebsite.StefanBlosWebsite.SectionID] = [
            .about, .posts
        ]
        
        return .header(
            .wrapper(
                .a(.class("site-name"), .href("/"), .text(context.site.name)),
                .if(sectionIDs.count > 1,
                    .nav(
                        .ul(.forEach(sectionIDs) { section in
                            .li(.a(
                                .class(section as? T.SectionID == selectedSection ? "selected" : ""),
                                .href(context.sections[section as! T.SectionID].path),
                                .text(context.sections[section as! T.SectionID].title)
                                ))
                            })
                    )
                )
            )
        )
    }
    
}
