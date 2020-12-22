---
date: 2020-12-22 12:00
description: How to load text and json files inside of a Xcode Playground.
tags: swift, xcode
---

# Loading files in Xcode Playgrounds

Xcode Playgrounds are a great way to experiment and try out code in a sandbox. It even allows us to bootstrap screens and quickly challenge a design idea. Although they are sometimes a bit buggy they probably are an underutilized tool.

In this quick example I want to show you how you can load files from disk in an Xcode Playground. The use-cases for this are wide-ranging. You might try to experiment with loading a JSON-file to see how you can convert a server-response into your pre-defined data format. 

Another application might be some textual data that you want to preprocess and convert into a different format. You can run Swift code step by step to cover the entire process of conversion or even experiment with new Xcode features in a sandboxed environment.

There are two examples I want to give: loading a `.txt`-file and loading a `.json`-file. We can even combine the two and work with an enum.

## Create new playground

In order to have something to play with we first create a new playground. We can do this in Xcode using `File`- `New`- `Playground`. I'll give mine the wonderful name **Loading**.

<figure>
    <img class="medium-image" src="../../images/posts/loading-files-in-playgrounds/create-new-project.png" alt="Screenshot of how to create a new Plaground project in Xcode." />
    <figcaption>How to create a new Playground project in Xcode</figcaption>
</figure>


## Create a file to work with

First, you need to import a file into the `Resources` directory of your Playground. You can do that by **right-clicking** on the `Resources`  folder as shown below. Then you can call it `sample.txt` or `sample.json` depending on the type of file you want to load. 

<figure>
    <img class="medium-image" src="../../images/posts/loading-files-in-playgrounds/create-new-file.png" alt="Screenshot of how to create a new file inside of our Resources folder in the playground.." />
    <figcaption>How to create a new file inside of our Resources folder in the playground.</figcaption>
</figure>

(If you have the challenge to find files to try out, [here you can find a sample text file](https://www.le.ac.uk/oerresources/bdra/html/resources/example.txt) and [here is a sample for a json file](https://tools.learningcontainer.com/sample-json.json). Just copy the content into the file and you're good to go.)

## Load the file(s)

Now, on to the challenge of loading the file. They are located in the `Bundle.main` part of our little sandbox that is our Playground. We can then grab the `URL` of the file with the `Bundle.main.url` function. Then, we can use the initializer with the options `String(contentsOf:encoding)` to convert it to a `String`.

In order to make it reusable we can call that inside a function. We'll start off with a `.txt` file and then generalize it. See below our wonderful file loading code:

```swift
func load(file named: String) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: named, withExtension: "txt") else {
        return nil
    }
    
    guard let content = try? String(contentsOf: fileUrl, encoding: .utf8) else {
        return nil
    }
    
    return content
}
```

We can then call the function and print the output using the following code snippet:

```swift
print(load(file: "sample")!)
```

(Notice that I'm force unwrapping the  return value of our `load` function with the `!` operator. Since I know that I just put the file there, I know that is available. In circumstances where we work with data that is not entirely under our control we should be more cautious here and check for errors.)

## Generalize our function for any file type

This works fine for the text file. We could also create another function that works similarly for `json`-files by exchanging the `withExtension` parameter to `json`. While that technically works I think we can do better than that.

First we'll create an enum called `FileExtension`. We want to use **[raw values](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)** for the cases of the enum so we need to declare the type to be `String`. Then, we can declare cases for our file types. In fact we can declare as many types as we want, so we could simply extend this for `xml`, `html` or other fantastic file types that we all love and enjoy.

Enough with the raving about file types and on to the code:

```swift
 enum FileExtension: String {
    case txt = "txt"
    case json = "json"

```

This little enum now allows us to extend our `load` function to receive another parameter called `ofType` that is of type `FileExtension`.  We can use the `rawValue` of this parameter to hand to the `withExtension` parameter of the `url` call. This gives us the following function:

```swift
func load(file named: String, ofType fileType: FileExtension) -> String? {
    guard let fileUrl = Bundle.main.url(forResource: named, withExtension: fileType.rawValue) else {
        return nil
    }
    
    guard let content = try? String(contentsOf: fileUrl, encoding: .utf8) else {
        return nil
    }
    
    return content
}
```

Now we can call the function for either `.txt`-files or `.json`-files by providing the respective extension. Here are examples of both calls:

```swift
print(load(file: "sample", ofType: .txt)!)

print(load(file: "sample", ofType: .json)!)
```

## Summary

Xcode Playgrounds offer a great way to experiment with a lot of different features. Having the ability to load content from files gives us a great way to iterate on code in a safe environment or even just experiment.

With the straightforward code in this little tutorial we can make this happen in a quick and reusable way.  

If you use Xcode Playgrounds yourself I'd love to hear from you which things you cover with them. Feel free to [tweet at me](https://twitter.com/stefanjblos) or hit me up with a DM there. I hope you find this article useful.
