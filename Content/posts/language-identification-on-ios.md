---
date: 2021-04-21 10:00
description: Learn how to identify languages in a String using the Natural Language Framework. I will show you all the tips and tricks you need to know.
tags: natural-language, nlp
---

# Language identification on iOS

On a previous post we took a look at the [`Natural Language` framework](https://stefanblos.com/posts/natural-language-on-ios/) in general. We discussed the different use-cases it has and examples for when and how to use it. If you need a refresher on that I also recommend [watching the video I made on the topic](https://www.youtube.com/watch?v=9biaLAkcdjs).

In this post we want to take a closer look at how we can do [language identification](https://developer.apple.com/documentation/naturallanguage/identifying_the_language_in_text) with the [`Natural Language`](https://developer.apple.com/documentation/naturallanguage) framework. We'll go through all the steps necessary and evaluate the options we have, so let's get started.

## Create a Language Recognizer

The first thing we need to identify (a) language(s) is an instance of the `NLLanguageRecognizer` class. It takes no arguments since all the configuration is done in later stages.

```swift
let recognizer = NLLanguageRecognizer()
```

In the rest of the examples we will always work with this `recognizer` instance.

Note: We also need to import the `NaturalLanguage` framework in order for this code to work inside our apps.

Next, we need a `String` that we can process. This will also be the same for all following steps so let's do that once.

First, we create a `String` where we like to determine the language (feel free to use any `String` you like). Then, we call the `processString(_:String)` method on our `recognizer`.

```swift
let toDetect = "The force is strong in this one"
recognizer.processString(toDetect)
```

Note: when we want to work with multiple `Strings` we have to call `.reset()` on the `recognizer` before using `processString` again.

## Predicting the Language

After having processed a `String` we can use the `dominantLanguage` property of the `recognizer` instance to receive an optional `NLLanguage?` entity. As can be seen [in the documentation](https://developer.apple.com/documentation/naturallanguage/nllanguage) it has a `rawValue` (of type `String`) that gives us the desired prediction of the language in short form (e.g. `en` for English).

It is an optional value so if our `recognizer` fails to predict a language it will be `nil`. To access the value we can do this:

```swift
if let predictedLanguage = recognizer.dominantLanguage {
	print("Predicted language is: \(predictedLanguage.rawValue)")
else {
	print("Language could not be detected")
}
```

As this is probably the most common use case Apple has also built a quicker way to do this:

```swift
let toDetect = "I am your father"
// We will again receive an optional NLLanguage?
let predictedLanguage = NLLanguageRecognizer.dominantLanguage(for: toDetect)
```

While this requires us to unwrap the optional it is way more direct and short than creating a `NLLanguageRecognizer` object first.

## Getting multiple languages as hypotheses

We also have the option to get hypotheses on the most likely languages that the framework thinks it detects in the given `String`.

```swift
let hypotheses = recognizer.languageHypotheses(withMaximum: 3)
```

The result will be a dictionary of `NLLanguage` objects as keys and probabilities (of type `Double`) as values. This means that no order is given but we have to manually find the one entry with the highest probability.

We can do this using the `max(by:)` method of `Dictionary`:

```swift
let mostLikelyLang = hypothesis.max { a, b in a.value < b.value }
```

Note: It is not guaranteed that this array will be exactly the amount of entries we specified as a maximum.

The advantage of using the hypothesis is that we also get a probability. If that is low we can act accordingly and not just blindly trust the prediction of the framework for the most likely language.

## Limiting/assisting the predictions

While the aforementioned examples should cover most use-cases there is two more things we can do.

First, we are able to configure our `recognizer` to only look for a certain set of languages by using the `languageConstraints` property. It can be set to an array of `NLLanguage` objects:

```swift
recognizer.languageConstraints = [.english, .german, .french, .spanish]
```

This limits the amount of languages that can be detected.

If we want to go even further we can use the `languageHints` configuration which takes a `Dictionary` of `[NLLanguage: Double]` pairs and allows us to pre-configure our `recognizer` with some probabilities for languages we know:

```swift
recognizer.languageHints = [
    .english: 0.6,
    .german: 0.4,
    .french: 0.7,
    .spanish: 0.2
]
```

However, this is only useful in very, very specific circumstances and if we have a really feasible reason to do it.

## Summary

We can use the `NLLanguageRecognizer` for two purposes:

- detecting the most likely language of a `String`
- getting the probabilities of the most likely languages of a `String`

This can be done in a rather straightforward fashion. While it also offers some more customization and limitations, those should only very rarely be necessary.

With that, Apple gives us an easy way to use smart functionalities in our apps.

Thanks you for following this article, I hope you enjoyed it. If you have any feedback or things to add I'm happy to hear from you on [Twitter](https://twitter.com/stefanjblos) or [LinkedIn](https://www.linkedin.com/in/stefan-blos/). If you're interested in more content, [check out my other posts](https://stefanblos.com/posts/) or my [Youtube videos](https://www.youtube.com/channel/UC63d2z58E_Xm76yXMsyxksQ).
