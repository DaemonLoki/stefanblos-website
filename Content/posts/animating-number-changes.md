---
date: 2022-04-18 10:00
description: Learn how to create advanced number animations that look great and are fun to use.
image: images/previews/animating-number-changes.png
tags: swift, swiftui, animation
---


# Animating number changes in SwiftUI

One of the things I love most about SwiftUI is the animation system. It really makes it fun to experiment and play around with animations to find just the right one for the use case.

There is an animation, however, where I think there is not a really intuitive way to create it:

<video name="Animating numbers preview" class="medium-image" controls="controls"
src="../../images/posts/animating-number-changes/animating-numbers-preview.mov"></video>

We’ll be going through the steps of implementing it (it’s not hard) and I’ll describe the workarounds we need to do here, but let’s start off with the way I would have assumed it to work first.

## Basic setup

In SwiftUI we need to mark changing variables with the `@State` property, so we will do that for our number. We can then show the number wrapped in a `Text` view and for updating it create a simple button that assigns a random value (in our example in the range of 0 to 200) to our `@State` property.

We’ll wrap the updating call with the `withAnimation` function to make sure the number gets animated on the change.

Here’s how our `AnimatingNumberView` looks for now:

```swift
struct AnimatingNumberView: View {
	@State private var number: Int = 0

	var body: some View {
		VStack(spacing: 20) {
			Text("\(number)")

			Button {
				withAnimation {
					number = .random(in: 0 ..< 200)
				}
			} label: {
				Text("Create random number")
			}
		}
	}
}
```

This won’t work as we see in the video:

<video name="Incorrect animation" class="medium-image" controls="controls"
src="../../images/posts/animating-number-changes/animation-wrong.mov"></video>

It will animate the container width of the view but not the number itself. Why is that?

## The AnimatableModifier protocol

The animation system in SwiftUI is smart. It allows you to do a simple thing which is specifying a start and an end value. If we animate something like the width of a `View` for example, we give it the starting width (e.g. `100`) and an end width (e.g. `300`). From these values, it will take the time it takes for the animation and interpolates the values in between to create a smooth transition from one width to the other.

While the term interpolation sounds fancy, it’s not a complicated concept. If we stick with the width example all it does is the following:

1. Calculate the difference between the starting value and the end value (`300 - 100 = 200`)
2. Calculate the duration of the animation (e.g. 1 second)
3. Slowly add portions of the difference (`200`) to the start value for each update interval (= each new frame) so that after 1 second we have the final value

<aside>
💡 Note: this describes a `linear` interpolation. For other animation types, the chunks that are added over time might slow down (`easeOut`) or speed up (`easeIn`) over time.

</aside>

For the animation of the number value over time the animation system doesn’t understand what it needs to animate here so it takes its best guess, which is the width. Fortunately, we can fix this by manually telling the system what we want to animate and how to do it over time...with the `AnimatableModifier` protocol.

It allows us to specify which data we want to animate and how to do it over time. While this might sounds complicated at first, it is really easy to achieve and I’ll show you in a second.

However, there is one caveat that I’m not a fan of and that has no clean way (or at least: I haven’t found a good way yet). As the name suggests, the `AnimatableModifier` protocol allows us to create a modifier specifying the animation, not a `View`.

This means we have to wrap the `View` that contains the number in the modifier. Let’s look at the code how we can achieve this and I’ll point out what I mean:

```swift
struct AnimatableNumberModifier: AnimatableModifier {
    var number: Double
    
    var animatableData: Double {
        get { number }
        set { number = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .overlay(
                Text("\(Int(number))")
            )
    }
}
```

Let’s unpack what we have here:

- we make the modifier conform to the `AnimatableModifier` protocol
- it takes a number as a parameter (Note that we need to use a `Double` or a `CGFloat` here as an `Int` won’t work, don’t ask me why)
- we need to specify the computed variable `animatableData` to give SwiftUI an indication of which value changes over time and how to get and set new values for it during the animation
- in the `body` function, we take the content of the `View` the modifier gets applied to and overlay it with a `Text` view that has our number (cast to an `Int` because we want no decimals in this household)

## Using the animatable modifier in the View

Lastly, we want to use this modifier in our `View` and really show the animation. Before we do that we will create a small convenience extension so that we can call our modifier in a more natural way:

```swift
extension View {
    func animatingOverlay(for number: Double) -> some View {
        modifier(AnimatableNumberModifier(number: number))
    }
}
```

The code for displaying the animating text that we had at the beginning will slightly change. Let me show it to you first and then I’ll point out the differences:

```swift
struct AnimatingNumberView: View {

    // Change 1: number is now a Double
    @State private var number: Double = 0

    var body: some View {
        VStack(spacing: 20) {
            // Change 2: we have a container with our modifier applied
            Color.clear
                .frame(width: 50, height: 50)
                .animatingOverlay(for: number)

            Button {
                withAnimation {
                    number = .random(in: 0 ..< 200)
                }
            } label: {
                Text("Create random number")
            }
        }
    }
}
```

There are two things that have changed and I marked them in code so you know which ones I’m referencing:

1. Our `@State` variable `number` is now a `Double`. As I briefly described it has to be a decimal number for the system to be able to interpolate it. An `Int` doesn’t work here and we’re circumventing that with casting the `Double` to an `Int` when displaying it in the modifier
2. We replace the `Text` we had before with that `Color.clear` that acts as a container view. As this would take up the entire space of the screen we can give it a `.frame` to limit its size (this is optional depending on the layout you want to create). We then apply the modifier to overlay our container with the animating `Text` inside of our `AnimatableNumberModifier`.

When we look at the end result, we can be very happy with it:

<video name="Correct animation" class="medium-image" controls="controls"
src="../../images/posts/animating-number-changes/animation-right.mov"></video>

## Summary

In this tutorial, we created a great animating numbers effect and learned quite a few things about the animation system in SwiftUI on the way. Oh, and of course, we had fun all the way, right?

The `AnimatableModifier` protocol allows us to more clearly specify to the animation system which value(s) we want to animate. This provides us with the ability to create more complex animations that look fantastic. 

The downside (for now) is that we need to use the combination of a container in our original `View` combined with an overlay in our modifier. If any of you may find a better way around this, then I’m happy to hear from you.

However, you can also get creative with it and use the container in more fancy ways as I did in the following tweet (click to see the video):

<blockquote class="twitter-tweet" data-lang="en" data-theme="dark"><p lang="en" dir="ltr">Played around a bit with animating numbers in <a href="https://twitter.com/hashtag/SwiftUI?src=hash&amp;ref_src=twsrc%5Etfw">#SwiftUI</a> today. While I’d say it’s not complicated it certainly isn’t as straight forward to achieve as you would expect maybe…🤔<br><br>Creating a blog post for it, anything I should cover specifically? ❓ <a href="https://t.co/s9LaHT32cb">pic.twitter.com/s9LaHT32cb</a></p>&mdash; Stefan (@stefanjblos) <a href="https://twitter.com/stefanjblos/status/1515779347411578880?ref_src=twsrc%5Etfw">April 17, 2022</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

I challenge you to do this and make sure to [tweet your awesome ideas and ways at me (@stefanjblos)](https://twitter.com/stefanjblos).

There is also a fantastic series about animations (and much, much more) [from The SwiftUI Lab](https://swiftui-lab.com), which you can also [find on Twitter](https://twitter.com/SwiftUILab).

Hopefully, you learned something interesting from this article. If you enjoyed that you can also have a look at [my other articles](https://stefanblos.com) or [my Youtube Channel](https://www.youtube.com/channel/UC63d2z58E_Xm76yXMsyxksQ).
