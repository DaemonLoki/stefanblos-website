---
date: 2022-04-27 10:00
description: Notes of the Twitter Space on MotionScape. We discussed many topics, like how we came up with the idea, the development process and the publication.
image: images/previews/twitter-space-motionscape.png
tags: ios, twitter-spaces
---

# Twitter Space: MotionScape - building a free, open-source Mac app

## Outline

The hosts of this show were [Stefan](https://twitter.com/stefanjblos) and [Amos](https://twitter.com/amos_gyamfi) und you can [listen to the recording here](https://twitter.com/i/spaces/1PlKQaXQBZDKE).

1. Introduction and welcome
    1. We mentioned [the release tweet](https://twitter.com/stefanjblos/status/1518609926922330114?s=20&t=WYTPRs8a8gPr7z2jEwlFzA), [the download link](https://apps.apple.com/us/app/motionscape-animation-studio/id1616840951?utm_source=macapplestore&utm_campaign=twitter), and that people should check it out and have a look [at the open-source repo](https://github.com/GetStream/motionscape-app)
    2. Why shoud people star the repo? 
        * Because it allows us to keep working on it 
        * As luckily our employer [Stream](https://getstream.io) is kind enough to let us work on it
2. What was the starting point?
    1. Amos created a (= many) tutorial(s) around animations
        1. Spring animation tutorial on Stream Developers YouTube
        2. Problem: How to test animation easings before actually using them in SwiftUI
        3. Solution (but only for web): 
            * [https://easings.net/](https://easings.net/) 
            * [https://cubic-bezier.com/](https://cubic-bezier.com/)
    2. We both thought that it was cool and fun to play around to get them right
    3. Stefan created a little example with some controls that set parameters
    4. Amos said: I always wanted to do that and create an app for that after seeing an example from CodePen.
    5. We both said: let’s do it
3. How did we approach it?
    1. We asked ourselves what we want from it?
        1. Clear that we wanted to open-source it
        2. Make it fun and free
        3. Not bloated, but just put in a few examples and maybe even explanations
    2. There’s only a limited number of different animations so we decided to start with the bare minimum
        1. created a list of things we wanted to have in our MVP that we thought to be “releasable”
        2. cut out the unnecessary things for later versions (not everything has to be in, if we want everything perfect we wouldn’t ever ship it)
    3. Include a few examples, add parameters to play around within a very simple UI
        1. Use basic UI components where possible
        2. go for functionality instead of fancy design (Example: drag-and-drop the dots of easing-graphs
    4. List of features to include:
        1. Spring animation support
        2. Easings/interpolations support
        3. Preview: what you see is what you get
        4. Ability to copy animation code snippets for SwiftUI
4. What did the development process look like?
    1. Amos created most of the animations and prepared them for inclusion in the app
    2. Stefan created the skeleton of the Mac app (which was completely new, but not really)
    3. we integrated and shared and improved from there
    4. There are still more animation examples ready for future versions
5. What did the release process look like?
    1. We tested between the two of us
    2. then we included people from our team (via TestFlight)
    3. then we got scared because a very similar app got released: [Couverture](https://apps.apple.com/app/id1552415914)
    4. then we released
6. What are the plans for the future?
    1. move the entire process to Github (Issues, Boards, etc.)
    2. get feedback from the community and see what they would like/contribute
    3. more animation examples for sure
    4. improve UX for a better ability to work with the app (Example: Timing curves - the ability to adjust control points with the control handles of the graph)

## Kindly share and like:

- [https://twitter.com/stefanjblos/status/1518609926922330114?s=20&t=KdJYHhwC01WnS-CgHnlV-g](https://twitter.com/stefanjblos/status/1518609926922330114?s=20&t=KdJYHhwC01WnS-CgHnlV-g)
- [https://github.com/GetStream/motionscape-app](https://github.com/GetStream/motionscape-app)
- [https://www.linkedin.com/feed/update/urn:li:activity:6924378175850299393/](https://www.linkedin.com/feed/update/urn:li:activity:6924378175850299393/)
- [https://apps.apple.com/us/app/motionscape-animation-studio/id1616840951](https://apps.apple.com/us/app/motionscape-animation-studio/id1616840951)

## Listener Requested Links

### SwiftUI Animation Links

- SwiftUI Animation on Udemy: [https://www.udemy.com/course/swiftui-animation-foundations/](https://www.udemy.com/course/swiftui-animation-foundations/)
- Book (old buy mighty): [https://useyourloaf.com/blog/ios-core-animation-advanced-techniques/](https://useyourloaf.com/blog/ios-core-animation-advanced-techniques/)
- Mark’s SwiftUI animations book: [https://www.bigmountainstudio.com/animations-15](https://www.bigmountainstudio.com/animations-15)
- Learn Core Animation with Kite: [https://kiteapp.co/](https://kiteapp.co/)
- MotionScape: [https://apps.apple.com/us/app/motionscape-animation-studio/id1616840951](https://apps.apple.com/us/app/motionscape-animation-studio/id1616840951)
- 100 Days of SwiftUI (Day 32 - 34): [https://www.hackingwithswift.com/100/swiftui/32](https://www.hackingwithswift.com/100/swiftui/32)
- SwiftUILab: [https://swiftui-lab.com/category/animations/](https://swiftui-lab.com/category/animations/)

### SwiftUI Animation Inspiration

- Stream SwiftUI Spring animations: [https://github.com/GetStream/swiftui-spring-animations](https://github.com/GetStream/swiftui-spring-animations)
- SwiftUI animation library: [https://github.com/amosgyamfi/swiftui-animation-library](https://github.com/amosgyamfi/swiftui-animation-library)
- MotionScape: [https://github.com/GetStream/motionscape-app](https://github.com/GetStream/motionscape-app)
- Stream SwiftUI animations: [https://github.com/GetStream/stream-swiftui-animations](https://github.com/GetStream/stream-swiftui-animations)

### Animation Theory and Principles

- Free animation handbook: [https://www.designbetter.co/animation-handbook](https://www.designbetter.co/animation-handbook)
- Material Motion: [https://material.io/design/motion/the-motion-system.html](https://material.io/design/motion/the-motion-system.html)
- The 12 Principles of UX in Motion: [https://medium.com/ux-in-motion/creating-usability-with-motion-the-ux-in-motion-manifesto-a87a4584ddc](https://medium.com/ux-in-motion/creating-usability-with-motion-the-ux-in-motion-manifesto-a87a4584ddc)
- NNGroup animation research: [https://www.nngroup.com/articles/animation-purpose-ux/](https://www.nngroup.com/articles/animation-purpose-ux/)
