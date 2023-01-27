//
//  Swiftillionaire.swift
//  
//
//  Created by Stefan Blos on 16.11.22.
//

import Foundation
import Publish
import Plot

public extension Node where Context: HTML.BodyContext {
    static var swiftillionairePage: Node {
        return .section(
            .img(
                .class("swiftillionaire-logo"),
                .src("../../images/swiftillionaire/swiftillionaire-logo.png")
            ),
            .h1(
                .class("swiftillionaire-hero-headline"),
                .text("Your "),
                .span(
                    .class("underline-word"),
                    "new"
                ),
                .text(" favorite "),
                .span(
                    .class("prominent-word"),
                    "Swift"
                ),
                .text(" Quiz app")
            ),
            .img(
                .class("app-store-logo"),
                .src("../../images/swiftillionaire/download-on-app-store.svg")
            ),
            .div(
                .class("quote-area"),
                .span(
                    .class("quote-text"),
                    .text("This application really brought my Swift skills to the next level. Highly recommend it!")
                ),
                .div(
                    .class("quote-person"),
                    .img(
                        .class("quote-photo"),
                        .src("../../images/hero-small.jpg")
                    ),
                    .div(
                        .span(
                            .class("quote-name"),
                            "Stefan Blos"
                        ),
                        .span(
                            .class("quote-description"),
                            "Creator of Swiftillionaire and objective reviewer"
                        )
                    )
                )
            ),
            .div(
                .class("swiftillionaire-image-grid"),
                .img(
                    .class("swiftillionaire-screenshot screenshot"),
                    .src("../../images/swiftillionaire/score-light.png")
                ),
                .img(
                    .class("swiftillionaire-screenshot swiftillionaire-main-screenshot screenshot"),
                    .src("../../images/swiftillionaire/question-light.png")
                ),
                .img(
                    .class("swiftillionaire-screenshot screenshot"),
                    .src("../../images/swiftillionaire/settings-light.png")
                )
            ),
            .h2(
                .class("swiftillionaire-subheadline"),
                .text("About the app")
            ),
            .div(
                .class("feature-section"),
                .div(
                    .class("feature-img-shape"),
                    .img(
                        .class("screenshot"),
                        .src("../../images/swiftillionaire/question-light.png")
                    ),
                    .div(
                        .class("background-shape")
                    )
                ),
                .div(
                    .class("feature-info"),
                    .h3(.text("Answer questions")),
                    .p("Test your knowledge about features ranging the entire space of the Swift landscape combined with Apple's platforms.")
                )
            ),
            .div(
                .class("feature-section second-feature-section"),
                .div(
                    .class("feature-info"),
                    .h3(.text("Score big")),
                    .p("Answer 15 questions right and become the Swiftillionaire you never knew you dreamed of. (Or learn from your mistakes)")
                ),
                .div(
                    .class("feature-img-shape"),
                    .img(
                        .class("screenshot"),
                        .src("../../images/swiftillionaire/score-light.png")
                    ),
                    .div(
                        .class("background-shape")
                    )
                )
            ),
            .div(
                .class("feature-section"),
                .div(
                    .class("feature-img-shape"),
                    .img(
                        .class("screenshot"),
                        .src("../../images/swiftillionaire/settings-light.png")
                    ),
                    .div(
                        .class("background-shape")
                    )
                ),
                .div(
                    .class("feature-info"),
                    .h3(.text("Make it yours")),
                    .p("Customize the app just as you like it with different options for game modes, color schemes, and more.")
                )
            )
        )
    }
}
