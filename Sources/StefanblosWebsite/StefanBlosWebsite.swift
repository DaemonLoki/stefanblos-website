//
//  StefanBlosWebsite.swift
//  
//
//  Created by Stefan Blos on 10.08.20.
//

import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct StefanBlosWebsite: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case about,posts,imprint,winspool,winspoolprivacy
    }

    struct ItemMetadata: WebsiteItemMetadata {
        
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://stefanblos.com")!
    var name = "Stefan Blos"
    var description = "Personal blog of Stefan Blos"
    var language: Language { .english }
    var favicon: Favicon? { Favicon()}
    var imagePath: Path? { "images/header_dark.png" }
}
