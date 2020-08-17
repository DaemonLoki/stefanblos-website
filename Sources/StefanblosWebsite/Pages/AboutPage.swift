//
//  AboutPage.swift
//  
//
//  Created by Stefan Blos on 14.08.20.
//

import Publish
import Plot

struct SocialLink {
    let link: String
    let pathToImage: String
    let altText: String
}

struct SkillProperty {
    let headline: String
    let description: String
}

struct Skill {
    let name: String
    let props: [SkillProperty]
}

struct Experience {
    let name: String
    let company: String
    let props: [SkillProperty]
}

public extension Node where Context: HTML.BodyContext {
    static var aboutPage: Node {
        return .div(.class("about-page"),
                    .social,
                    .mySkills,
                    .myExperience
        )
    }
    
    static var social: Node {
        
        let mediaLinks = [
            SocialLink(link: "https://twitter.com/stefanjblos", pathToImage: "social/twitter-dark-mode.png", altText: "Link to my Twitter profile"),
            SocialLink(link: "https://github.com/daemonloki", pathToImage: "social/github-dark-mode.png", altText: "Link to my Github profile"),
            SocialLink(link: "https://www.linkedin.com/in/stefan-blos/", pathToImage: "social/linkedin.png", altText: "Link to my LinkedIn profile"),
        ]
        
        return .section(
            .class("social-section"),
            .sectionHeadline("My", highlighted: "Social"),
            .ul(
                .forEach(mediaLinks) { mediaLink in
                    .li(
                        .a(.href(mediaLink.link),
                           .img(
                            .src(Path.to(image: mediaLink.pathToImage)),
                            .alt(mediaLink.altText)
                            )
                        )
                    )
                } 
            )
        )
    }
    
    static var mySkills: Node {
        
        let skills = [
            Skill(name: "Languages", props: [
                SkillProperty(headline: "Swift", description: "Knowledge of fundamental principles and structure of coding in Swift"),
                SkillProperty(headline: "Python", description: "Solving complex problem statements and applying it to Machine Learning challenges"),
                SkillProperty(headline: "HTML, CSS, JS", description: "Building performant and beautiful websites with a sense for design and UX")
            ]),
            Skill(name: "App development", props: [
                SkillProperty(headline: "iOS", description: "Building apps with UIKit and SwiftUI with a focus on clean UI and usefullness for the user"),
                SkillProperty(headline: "Flutter", description: "Cross-plattform apps that respect the guidelines on all platforms and fulfill a purpose"),
                SkillProperty(headline: "Web", description: "Creating websites with React, GatsbyJS, Publish and other frameworks through thorough knowledge of the basics")
                
            ]),
            Skill(name: "Machine Learning & AI", props: [
                SkillProperty(headline: "Foundations", description: "Deep knowledge of underlying algorithms and functionalities through focus on ML & AI in my Master's program"),
                SkillProperty(headline: "PyTorch", description: "Building machine learning pipelines achieved through practice and a learning scholarship by Facebook"),
                SkillProperty(headline: "Tensorflow", description: "Experience creating machine learning models and solving complex tasks")
            ])
        ]
        
        return .section(
            .class("skills-section"),
            .sectionHeadline("My", highlighted: "Skills"),
            .ul(
                .forEach(skills) { skill in
                    .li(
                        .class("skill-property"),
                        .h3(.text(skill.name)),
                        .ul(
                            .forEach(skill.props) { skill in
                                .li(
                                    .p(.class("prop-header"),
                                       .text(skill.headline)),
                                    .p(.text(skill.description))
                                )
                            }
                        )
                    )
                }
            )
        )
    }
    
    static var myExperience: Node {
        
        let experiences = [
            Experience(name: "Software developer", company: "CodeCamp:N", props: [
                SkillProperty(headline: "Web development", description: "Building accessible websites in small teams with React, GatsbyJS, Storybook and TailwindCSS"),
                SkillProperty(headline: "Backend", description: "Creating scalable backend software in Python and JS with AWS, AWS Lambda and EC2"),
                SkillProperty(headline: "DevOps", description: "Automation of deployment and integration of software with Github Actions, Terraform and Cloud Technologies")
            ]),
            Experience(name: "App developer", company: "Freelancer", props: [
                SkillProperty(headline: "iOS apps", description: "Building apps for clients including assistance in the concept phase, design, development and distribution"),
                SkillProperty(headline: "iOS frameworks", description: "Experience with common iOS frameworks such as UIKit, SwiftUI, ARKit, CoreML, CreateML, MapKit, SpriteKit."),
                SkillProperty(headline: "Flutter apps", description: "Creating cross-platform apps for iOS and Android with Flutter and Dart and adaptions for platform-specific UX")
            ]),
            Experience(name: "Working student", company: "Siemens Healthineers & e.solutions GmbH", props: [
                SkillProperty(headline: "Machine learning", description: "Exploring and evaluating ML models and AI solutions in the car industry"),
                SkillProperty(headline: "Software development", description: "Engineering software in Java, Kotlin, Python, Javascript, Typescript that shipped in production"),
                SkillProperty(headline: "Test Automation", description: "Writing unit as well as integration tests for FDA-approved healthcare software")
            ])
        ]
        
        return .section(
            .class("skills-section"),
            .sectionHeadline("My", highlighted: "Experience"),
            .ul(
                .forEach(experiences) { experience in
                    .li(
                        .class("experience-property"),
                        .div(
                            .h3(.text(experience.name)),
                            .p(.text(experience.company))
                            ),
                        .ul(
                            .forEach(experience.props) { skill in
                                .li(
                                    .p(.class("prop-header"),
                                       .text(skill.headline)),
                                    .p(.text(skill.description))
                                )
                            }
                        )
                    )
                }
            )
        )
    }
}

extension Node where Context: HTML.BodyContext {
    
    static func sectionHeadline(_ text: String, highlighted: String) -> Node {
        return .h2(
            .text(text + " "),
            .span(.class("highlight-text"),
                  .text(highlighted)
            )
        )
    }
    
}

extension Path {
    
    static func to(image: String) -> Path {
        return Path("../../../images/" + image)
    }
    
}
