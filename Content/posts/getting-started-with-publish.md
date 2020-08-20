---
date: 2020-07-28 21:07
description: Setting up and getting started with Publish.
tags: publish, swift, web
---

# Getting started with Publish

Publish is a static-site generator written in Swift.

Get started by cloning the repo, switching to the folder and running `make`.

This will build the repository and enable the CLI. 

## Create a project

You can now start by creating a new folder where you want your website to be saved. You can do this in **Finder** or use the command `mkdir <folder-name>`.

Then you can create a new Publish project by switching into the created folder and typing `publish new`. This create all the necessary files for your project. 

## Project structure

You can now look at the created project with e.g. `ls` in your terminal or simply in Finder (which you can open with `open .`). Here we have the following folders and files:

- **Content**: This is home of the (surprise) content of your site. This means that the blog posts you will create are saved in the `posts` folder. You also have the `[index](http://index.md)` markdown file located at the root of the `Content` folder.
- **Resources**: in this folder you can put your images and other helpful resources, such as videos or script-files
- **Sources**: This is where your `main.swift` file can be found which is used to pull together all your `.swift` files and will build the project from here.
- **`Package.swift`**: as the name says it is the package  that contains information about your executables, dependencies and targets.

If you want to open the package you can do this using `Xcode`. If you have it installed you can double-click the `Package.swift` file and it will open up your project in `Xcode`.

(Insert an image of the structure in Xcode)

At the top of the project overview you can see the source code of your app/website. At the bottom there are all the dependencies that exist in your app. These are:

- Publish (shocker)
- [**Codextended**](https://github.com/JohnSundell/Codextended): A package that consists of extensions to give Swift's `Codable` API type inference super powers (by John Sundell).
- [**ShellOut**](https://github.com/JohnSundell/ShellOut): Also a package by John Sundell that allows to easily run shell commands from Swift scripts.
- [**Files**](https://github.com/JohnSundell/Files): Changing it up is a package created by a Swedish Swift newcomer called "John Sundell" (might be worth a follow, I sense great things by him) that creates a "nicer way to handle files & folders in Swift".
- [**Plot**](https://github.com/JohnSundell/Plot): This is one of the core packages necessary for Publish because it is the DSL (domain-specific language) that allows to write HTML, XML and RSS code in Swift. This is one of the core functionalities as it gives us the power of Swift's strong type system with a neat syntax to write HTML code. (Oh, this one is by John Sundell)
- [**Sweep**](https://github.com/JohnSundell/Sweep): allows for convenient, powerful and fast string scanning
- [**Ink**](https://github.com/JohnSundell/Ink): another core package which converts **Markdown** code into HTML. This is required for the blog-posts to be integrated and converted into actual page contents.

It is generally not required to interact with most of the packages but I think it is a good idea to get an overview of what is done under the hood. Also, as all of these are open-source it is possible to either contribute to the projects or adapt the packages to your needs.

## Building your project

One optional tip before running (which I got from [this wonderful introduction](https://www.youtube.com/watch?v=1qI_pIdsaII)) is to exchange the dependency of Publish in your project with a local dependency of your cloned project. This can be done in the `Package.swift` file by removing the following line:

```swift
.package(url: "[https://github.com/johnsundell/publish.git](https://github.com/johnsundell/publish.git)", from: "0.3.0")
```

Instead use this code to use the locally available version:

```swift
.package(path: "<path-to-your-Publish-package")
// e.g. .package(path: "/Users/stefanblos/Code/Web-Projects/Publish")
```

Xcode will now rebuild and resolve all issues. The very cool advantage you now have is that you can browse through your local Publish package and change and adapt the code of it to your needs.

You can now finally run your project by selecting your Mac as a target and hitting **⌘ + R**. This will create a new folder called **Output**. Here, the build script will generate all the necessary HTML, CSS and some other files. These can now be distributed and put onto any web server you like as they have no Swift dependency whatsoever.

This is the real power of static-site generation tools. You can develop them in any configuration you like, be it Swift, React or other frameworks. The final result will be plain HTML, CSS and sometimes Javascript and can universally be used on any server you like.

## Running your project

For development purposes it is common to create a local server on your machine. This gives you the possibility to get instant feedback on the changes you make to your site locally. Fortunately, Publish has you covered. Go to the folder in your terminal and type `publish run`. 

You can now enter `[http://localhost:8000](http://localhost:8000)` in your browser to see your site in action. If you want to stop the local server from running you can do that by hitting the enter key in your terminal window.
