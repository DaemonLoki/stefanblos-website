---
date: 2021-03-03 10:00
description: Introduction to the Natural Language framework. See what is possible to do and learn about possible use-cases.
tags: ios, natural-language, nlp
---

# Natural Language on iOS

Text is something that is available in most (if not all) apps on Apple's platforms. It is one of the primary ways users will interact with an application. Information can be presented to the user and it is also the most common method of collecting user input in our apps.

At the same time it is quite a challenge to pull information from text. Unlike numbers there's a lot of variation and complex structure behind it. This is where one of the lesser known frameworks comes in - [Natural Language](https://developer.apple.com/documentation/naturallanguage). 

This framework is available on nearly all of the platforms, namely iOS, macOS, tvOS and watchOS. Therefore, it's a valuable resource that can be extremely useful to know about.

It has some really powerful capabilities that I want to quickly introduce in this overview article. I will also go into more detail on how to use these different options in separate articles. Here, I want to give a short and concise outline of what is possible.

(Note: This also means that this article won't be too technical, I'll keep that to the detailed posts.)

## Language identification

One of the first and easiest to understand use-cases is [identifying the language of a text](https://developer.apple.com/documentation/naturallanguage/identifying_the_language_in_text). Putting in a simple `String` the framework will give us the most probable language that the text is written in (or in fact a number of suggestions).

How can we use that in our apps? There are two use-cases that directly come up in my mind. The first one is to identify the language the user puts into our app. While we could also use the `locale` this might actually not be the best solution. Some people (including me) don't have their phone set to their native language but rather something more common like English. If we still want to keep the option of presenting the content to our user in his/her favorite language we could offer an option in these cases.

The second example is having external content in our apps. If we think of an example like a news app the content might arrive in different languages. Again, we could use identification of the language to offer a translation to our user. This will improve the user experience and reduce frustration because we can proactively improve the life of the person that is interacting with our application.

## Tokenization

This is one of the lesser known techniques that might require some more explanation. What tokenization does is it splits up a `String` into the [semantic units it consists of.](https://developer.apple.com/documentation/naturallanguage/tokenizing_natural_language_text) That might have actually made it worse. 

Looking at an example sentence (taken from the [official documentation](https://developer.apple.com/documentation/naturallanguage/tokenizing_natural_language_text)):

```swift
"All human beings are born free and equal in dignity and rights."
```

When using tokenization we will receive all the single words from that sentence. This might look trivial at first glance and in simple cases can be done manually. However this has some smart features baked in. 

For example it removes punctuation from the `String` leaving you only with words. Also there are [multiple options](https://developer.apple.com/documentation/naturallanguage/nltokenunit) to even split the text into e.g. sentences or paragraphs.

So this is something to definitely consider when needing to split up a `String` into its different building blocks. One of the really great use-cases however is when combining it with our next option.

## Lemmatization

The process of lemmatization - also called stemming - allows for transforming a word into its basic structure. Let's look at a little example to make this more clear.

Assume you want to implement text-based search in your app. The user can enter a `String` and you will check the content of the app to match that `String`. When the user enters a word like **"playing"** it will only match all the exact same words. What if one piece of content has the word **"played"** in it. Is that a potential match?

Of course, this depends on the use-case but it most certainly can be. A basic regex comparison will not catch that. This is where lemmatization kicks in. It will take a word (e.g. **"playing"**, **"played"**) and transform it to its basic form (here: **"play"**). This makes the search instantly more comprehensive. 

Practically we can use the `NLTagger` class of the `Natural Language` framework and instantiate it with a `NLTagScheme` of type `.lemma` ([see here for all types](https://developer.apple.com/documentation/naturallanguage/nltagscheme)). After this, we can collect the tag for a word of our choosing.

Lemmatization is also used to prepare texts for more complex Natural Language Processing (NLP) tasks. With that, the subsequent steps have to deal with a smaller amount of words as we only take the stem of each word. Less dimensions of data (almost) always means shorter training time and saved space.

## Word embeddings

The concept of word embeddings is described quickly but takes a bit of thinking to fully understand (I also recommend [reading Apple's article on that](https://developer.apple.com/documentation/naturallanguage/finding_similarities_between_pieces_of_text)). We think of words as vectors. If you're not familiar with that concept you can think of every word having a position in a (very) large word cloud. This means that every word has a certain number of values that describe its position in space.

How we position the words is not part of this article and it doesn't need to be as this is something that we will be given. The most important feature now is that words that semantically belong together are also in close proximity in the word cloud (e.g. *car* and *bus*). At the same time words with no connection are far apart in the word cloud (e.g. *car* and *plant*). While this concept may sound odd in the beginning it allows for solving some pretty amazing use-cases.

Word embeddings can e.g. be used to search for close neighbors of any word. This could be used for suggestions of other search items in the context of a text-based search. It could also offer users content that can be identified as similar to existing content. 

Also, these embeddings can again be used to feed into more complex language models and machine learning pipelines. This will be featured in a later post but it's worth noting as they're a really powerful tool.

## Named entity recognition

This technique allows for recognition of [people, places and organizations](https://developer.apple.com/documentation/naturallanguage/identifying_people_places_and_organizations) in text. It gives us the ability to identify these entities without doing any extra work. 

Therefore it could enrich our abilities to show our users relevant information. In a messaging app it might show context when discussing about a place to visit or show the stock price of an organization without the user needing to explicitly ask for it. 

These might sound like small additions but - depending on the app we're building - we can achieve quite magical results with this kind of smart features built into our apps.

## Part of speech tagging

Similar to named entitiy recognition we can also use the `Natural Language` framework to identify the parts of a sentence, such as nouns, verbs and adjectives. This is a huge help if we try to understand intentions of the input the user is providing us.

This task is performed everytime we input a command into a voice assistant like Siri, Alexa or Google Assistant. It deconstructs the statement into its integral parts and tries to deduce an action based on the elements it finds.

Again, by using part of speech tagging we can try to better understand what the user tries to input into our apps. 

## Custom language models

I already mentioned that it is possible to train custom models. This requires more work and extends the capabilities of the `Natural Language` framework (we need to dive into some juicy `CreateML` territory here). This will be covered in later posts.

However I want to mention that it does not require expert domain knowledge or a PhD in NLP. Apple has provided great abstractions so that a lot of use cases can be covered if you have a decent amount of data and a clear task in mind.

During a recent discussion with a good friend, he mentioned that "Apple is democratizing AI" and - while this is a bold statement - I agree in terms of mobile and the scope of these language models and `CoreML`.

## Summary

This post is intended to give you a broad understanding of what is even possible. I'm really excited about the field of NLP and think that there are a ton of use-cases for it. However the most common reception I see from other developers is the following:

"It's really cool and magic and all, but how can I use it in my app? What problems does it solve?"

I think this is an excellent question and exactly the right approach. Instead of just putting it into our apps because it is hype we should ask ourselves how we can improve the experience for our users and give our apps superpowers.

With this article I hope to have shown you a few examples of what is possible once more developers will just see machine learning and natural language processing as part of their toolbelt to build great apps and enrich the lives of many. 

I will cover the technical implementations in a series of future posts, so stay tuned for that. If you have questions or other feedback I'd love to hear from you [on Twitter](https://twitter.com/stefanjblos). My DMs are always open, also if you like to discuss ideas and potential use-cases.

Thanks for reading and have a great day!
