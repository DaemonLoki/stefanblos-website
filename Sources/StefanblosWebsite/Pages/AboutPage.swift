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
    let path: String
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
            SocialLink(link: "https://twitter.com/stefanjblos", path: "M22.46 6c-.77.35-1.6.58-2.46.69.88-.53 1.56-1.37 1.88-2.38-.83.5-1.75.85-2.72 1.05C18.37 4.5 17.26 4 16 4c-2.35 0-4.27 1.92-4.27 4.29 0 .34.04.67.11.98C8.28 9.09 5.11 7.38 3 4.79c-.37.63-.58 1.37-.58 2.15 0 1.49.75 2.81 1.91 3.56-.71 0-1.37-.2-1.95-.5v.03c0 2.08 1.48 3.82 3.44 4.21a4.22 4.22 0 01-1.93.07 4.28 4.28 0 004 2.98 8.521 8.521 0 01-5.33 1.84c-.34 0-.68-.02-1.02-.06C3.44 20.29 5.7 21 8.12 21 16 21 20.33 14.46 20.33 8.79c0-.19 0-.37-.01-.56.84-.6 1.56-1.36 2.14-2.23z"),
            SocialLink(link: "https://github.com/daemonloki", path: "M12 2A10 10 0 002 12c0 4.42 2.87 8.17 6.84 9.5.5.08.66-.23.66-.5v-1.69c-2.77.6-3.36-1.34-3.36-1.34-.46-1.16-1.11-1.47-1.11-1.47-.91-.62.07-.6.07-.6 1 .07 1.53 1.03 1.53 1.03.87 1.52 2.34 1.07 2.91.83.09-.65.35-1.09.63-1.34-2.22-.25-4.55-1.11-4.55-4.92 0-1.11.38-2 1.03-2.71-.1-.25-.45-1.29.1-2.64 0 0 .84-.27 2.75 1.02.79-.22 1.65-.33 2.5-.33.85 0 1.71.11 2.5.33 1.91-1.29 2.75-1.02 2.75-1.02.55 1.35.2 2.39.1 2.64.65.71 1.03 1.6 1.03 2.71 0 3.82-2.34 4.66-4.57 4.91.36.31.69.92.69 1.85V21c0 .27.16.59.67.5C19.14 20.16 22 16.42 22 12A10 10 0 0012 2z"),
            SocialLink(link: "https://www.linkedin.com/in/stefan-blos/", path: "M19 3a2 2 0 012 2v14a2 2 0 01-2 2H5a2 2 0 01-2-2V5a2 2 0 012-2h14m-.5 15.5v-5.3a3.26 3.26 0 00-3.26-3.26c-.85 0-1.84.52-2.32 1.3v-1.11h-2.79v8.37h2.79v-4.93c0-.77.62-1.4 1.39-1.4a1.4 1.4 0 011.4 1.4v4.93h2.79M6.88 8.56a1.68 1.68 0 001.68-1.68c0-.93-.75-1.69-1.68-1.69a1.69 1.69 0 00-1.69 1.69c0 .93.76 1.68 1.69 1.68m1.39 9.94v-8.37H5.5v8.37h2.77z"),
        ]
        
        return .section(
            .class("social-section"),
            .h2(.text("Social")),
            
            .ul(
                .forEach(mediaLinks) { mediaLink in
                    .li(
                        .a(.href(mediaLink.link),
                           .createSVG(viewBox: "0 0 24 24", path: mediaLink.path)
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
            .h2(.text("Skills")),
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
            .h2(.text("Experience")),
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

extension Path {
    
    static func to(image: String) -> Path {
        return Path("../../../images/" + image)
    }
    
}
