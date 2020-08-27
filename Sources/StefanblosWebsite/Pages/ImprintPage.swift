//
//  ImpressumPage.swift
//  
//
//  Created by Stefan Blos on 26.08.20.
//

import Foundation
import Publish
import Plot

public extension Node where Context: HTML.BodyContext {
    static var imprintPage: Node {
        return .section(
            .h2(
                .text("Information pursuant to § 5 TMG")),
            .p(
                .text("Stefan Blos"),
                .br(),
                .text("St.-Martin-Str. 17"),
                .br(),
                .text("91330 Eggolsheim")),
            .h2(
                .text("Contact")),
            .p(
                .text("E-Mail: stefan.blos@gmail.com")),
            
            .h2(.text("Liability for Contents")),
            
            .p(.text("As service providers, we are liable for own contents of these websites according to Paragraph 7, Sect. 1 German Telemedia Act (TMG). However, according to Paragraphs 8 to 10 German Telemedia Act (TMG), service providers are not obligated to permanently monitor submitted or stored information or to search for evidences that indicate illegal activities.")),
            
            .p(.text("Legal obligations to removing information or to blocking the use of information remain unchallenged. In this case, liability is only possible at the time of knowledge about a specific violation of law. Illegal contents will be removed immediately at the time we get knowledge of them.")),
            
            .h2(.text("Liability for Links")),
            
            .p(.text("Our offer includes links to external third party websites. We have no influence on the contents of those websites, therefore we cannot guarantee for those contents. Providers or administrators of linked websites are always responsible for their own contents.")),
            
            .p(.text("The linked websites had been checked for possible violations of law at the time of the establishment of the link. Illegal contents were not detected at the time of the linking. A permanent monitoring of the contents of linked websites cannot be imposed without reasonable indications that there has been a violation of law. Illegal links will be removed immediately at the time we get knowledge of them.")),
            
            .h2(.text("Copyright")),
            
            .p(.text("Contents and compilations published on these websites by the providers are subject to German copyright laws. Reproduction, editing, distribution as well as the use of any kind outside the scope of the copyright law require a written permission of the author or originator. Downloads and copies of these websites are permitted for private use only.")),
            
            .p(.text("The commercial use of our contents without permission of the originator is prohibited.")),
            
            .p(.text("Copyright laws of third parties are respected as long as the contents on these websites do not originate from the provider. Contributions of third parties on this site are indicated as such. However, if you notice any violations of copyright law, please inform us. Such contents will be removed immediately."))
        )
    }
}
