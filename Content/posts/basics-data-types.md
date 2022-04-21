---
date: 2022-04-21 10:00
description: Learn everything about the data types we have in Swift and when to use which.
image: images/previews/basics-data-types.png
tags: basics, swift
---

# Swift Basics: Data Types

Swift is a statically typed language. What does that mean? 

When programming we (very) frequently store values of certain types in variables and constants ([check my post about that if you don’t feel familiar with that concept](https://stefanblos.com/posts/basics-variables-constants/)). Having a static type system in Swift means that whenever we create these variables and constants we have to give them a specific type that can’t change in the future.

This means that once we defined a variable and give it e.g. a `String` as a value, this variable can hold no other type in the future. Trying to assign an `Int` (a number) to it will give us an error.

Compare that to dynamic languages such as Javascript or Python. Here variables can freely change their type, meaning they can hold a `String` first and then you assign it a `number`.

There is pros and cons for both types of languages but the biggest advantage of Swift in my eyes is that we can see a lot of errors while writing code and not only find out about them when running our apps. 

## What types does Swift have for text?

We already learned about a few types that Swift has built-in. 

The `String` type allows us to assign text to a variable or constant. This can be text of any length or form:

```swift
let shortText: String = "abc"
let longText = "Swift is a beautiful language"
```

Note that in the second example we are not specifying the `String` type explicitly. This is a feature in Swift called *type inference*. From the expression it becomes clear that we are assigning a `String` to our `longText` constant here, so Swift is smart enough to know that it needs to give it the type `String`.

This works the same for all other values as well. Sometimes it is useful however to specify the type directly and we will see that in a second.

If we want to assign a single character to a variable or constant we also have the `Character` type available. This does what one would expect:

```swift
let a: Character = "b" // I choose chaos here, don't try this at home.
let c = "c" 
```

Now, we in the second example we omit the `Character` specification because it’s clear that this is a `Character`, right? Wrong.

If we run this, the `c` variable will actually be of type `String` (because this is the type that Swift infers here). We can easily fix this by explicitly specifying the type. Remember this, as this might help you spot errors in your code more easily.

## What types does Swift have for numbers?

For numbers we have 3 basic data types available in Swift:

- `Int`
- `Float`
- `Double`

Starting off with the `Int`, it describes an integer number (surprise). This means that if we try to assign it a decimal number we will receive an error:

```swift
var number: Int = 42
number = 3.14 // Error
```

For decimal types we now have two options: `Float` and `Double`. The only difference between the two is the range of numbers they can take. For now, it is not important for you to know why that is but the sort explanation is that a `Double` takes up more space in memory. Therefore it can have a wider range of values but takes up more space at the same time.

The difference between the two becomes only important in very high performance situations. It is a reasonable approach to use `Double` at the beginning. Swift somehow encourages that because if we omit the type when creating a variable and assign it a decimal number it will default to a `Double` (so we could say `Double` > `Float`).

```swift
let firstDecimal: Double = 1.234 // this will be a Double
let secondDecimal = 2.345        // this will also default to be a Double
let thirdDecimal: Float = 3.456  // this will be a Float
```

To sum it up, for numbers we use `Int` for integer values and `Double` for decimals.

<aside>
💡 Note: I’m simplifying a little bit here as theoretically there are more types. There is e.g. different types of `Int`s such as `Int8`, `Int16`, and more but you will rarely use those. If you understand the difference between `Int` and `Double` you are very well equipped for now!

</aside>

## One more type

The last type we want to discuss today is the most basic one but also very heavily used: the `Bool` . This can also be seen as the logical type because it only has two possible values: `true` or `false`.

We can use this like this:

```swift
var movieSeen: Bool = false
movieSeen = true
```

All other things we discussed so far like type inference also applies here as well. The `Bool` might sound primitive at first but it is a very heavily used type so make sure you understand it well.

## Summary

Today we learned about types in Swift. We went through the options for text and numbers and even found out about the boolean type as well.

This is a very broad topic but if we know these introduced types by heart we are very well prepared for our future journey with the Swift language.

If you enjoyed this article and want to see when new content comes out or have any questions, [follow me on Twitter](https://twitter.com/stefanjblos) and reach out. I’m always happy to help.
