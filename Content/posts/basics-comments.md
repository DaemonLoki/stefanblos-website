---
date: 2022-06-02 10:00
description: Learn about comments in Swift, what types there are, and how to use them
image: images/previews/basics-comments.png
tags: basics, swift
---


# Swift Basics - Comments

Many programming languages allow developers to leave comments in their code. A comment is a piece of code that will not be executed but is only there for people looking at the code.

These can be used to explain the functionality of the code, provide the thoughts the developer put into it, explain possible pitfalls, and much more. When (and even if) code comments are necessary is a topic of discussion (that is out of the scope of this article).

Let’s look at the different types of comments we can add in our code.

## Single Line Comment

A single line comment is marked with two slashes `//`. Everything that follows that will be detected as a comment by Swift until a new line starts.

That gives us two possibilities two write single line comments. The first one is that comment is the only thing on that line:

```swift
// A review can range from 1-5 stars
var review = 3
```

The comment is helpful in a way that it explains what possible values a review can have. There are other (maybe better) possibilities to explain this but it does what it should be.

The other possibility we have is putting a comment on the same line. It works the same, everything that comes after the `//` is not executed. 

Let’s look at the same example:

```swift
var review = 3 // A review can range from 1-5 stars
```

Which one is better suited is very situational and it comes down to personal preference.

## Multiline Comment

Sometimes, a single line of comments is not enough. We mentioned the situation where we might want to explain a more complex piece of code with additional info.

The start of multiline comments is marked by `/*` and their end by `*/`. Everything in between will be evaluated as a comment and not executed by Swift.

Let’s look at an example:

```swift
/* Eligibility is dependent on a lot of factors:
    These include:
    * Age
    * Experience
    * Education
*/
var eligible = true
```

A single line comment would not be sufficient in that case, so it’s nice to have the flexibility to use multiple lines of comments as this improves readbility.

## Summary

Code comments are a great way to communicate your intentions with future viewers of your code. You might be surprised how often even yourself will profit from that. 

Just know that there is a balance to be found between enough but not too many code comments. You should now be well equipped with the knowledge to comment your code well.

If you enjoyed this article and want to see when new content comes out or have any questions, [follow me on Twitter](https://twitter.com/stefanjblos) and reach out. I’m always happy to help.
