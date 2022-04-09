---
date: 2022-04-09 10:00
description: Getting started with variables and constants in the Swift language in a beginner-friendly way.
image: images/previews/basics-variables-and-constants.png
tags: basics, swift
---

# Swift Basics: Variables and Constants

In this series I want to explain the basics of the Swift programming language to you in a beginner-friendly way.

As developers we often need to store values for later use. We may want to use them for calculations, show them in the User Interface (UI) or act upon them under certain conditions.

There is a simple way to do this and let’s directly look at the code:

```swift
var age = 31
```

The `var` keyword specifies that we want to store a value in a new variable now. It is followed by the name of the variable, in this case `age`. Then we use an **equal sign** to specify that we want to assign the following number (`31`) to the variable called `age`.

Variable names can be anything you like aside from the following:

- keywords of the Swift language: `var` is an example here of words that are reserved to have fixed functionality in the language and can therefore not be used as names ([a list can be found here](https://www.tutorialkart.com/swift-tutorial/swift-keywords/))
- can’t have whitespaces in them: a whitespace indicates to Swift that we are finished with the name and are typing the next command
- can’t start with a number: a name like `2ndNumber` is not allowed whereas at other positions it is possible to use numbers (e.g. `number2` is a perfectly fine variable name in Swift)
- mathematical operators: using things like the plus (`+`) or minus (`-`) sign is not possible as the system might get confused whether that is a name or a mathematical operation we want to perform

Fun fact: even an emoji is possible as a variable name, but is rather uncommon as that might lead to other problems down the line.

There is a convention in Swift to use something called ***camelCase*** for variable names. We should name the variables after what they do or the values they have because that makes our code more understandable and easy to read. If that name contains more than one word we start with a small letter and append every word starting with a capital letter. An example would be: `numberOfAlbums`.

Once a variable was created we can also assign new values to it, overwriting the previous one:

```swift
var age = 31
age = 32
```

Notice that on the second line we do not have to write the `var` keyword anymore. Swift knows that this variable was already created and lets us assign a new value to it.

The example assigns a number to a variable (an `Int` as it is called in Swift) but we can also use text:

```swift
var name = "Taylor Swift"
```

The syntax is the same but we now assign a text (called `String` in Swift) that we need to put in quotes. The rest remains the same and we assign the value `"Taylor Swift"` to a variable called `name`.

One thing that is important to note is that once we create a variable, its type is fixed. 

```swift
var age = 31
age = "Taylor Swift" // 💥 this will give us an error
```

When trying to assign a text (or a `String`) after creating the variable `name` with a number (or an `Int`) we will get an error.

The reason for that is that Swift is a strongly typed language. Once a variable is created it has a certain type that is fixed and can’t be changed in the future.

We can even specify that type specifically when create a new variable (and in some cases we even have to):

```swift
var age: Int = 31
var name: String = "Taylor Swift"
```

Putting a color after the variable name and specifying it as an `Int` (= number) or `String` (= text) helps Swift to specifically set the type of value the variable will have.

The last thing we want to have a look at are constants.  If you know a value will never change over time, then we can specify it as a constant with the `let` keyword in Swift.

```swift
let bestSinger = "Taylor Swift"
```

If you know the value will never change (which is straight facts in this example) we use the same syntax but instead of a `var` we create a `let`.

All the rules of variables apply here except that we now can not assign a new value to a `let` (which makes sense by design).

```swift
let bestSinger = "Taylor Swift"
bestSinger = "Britney Spears" // 💥 this will give us an error 
```

I hope this article gave you a nice overview over variables and constants and how to create them and assign values. If you enjoyed this article and want to see when new content comes out or have any questions, [follow me on Twitter](https://twitter.com/stefanjblos) and reach out. I’m always happy to help.
