---
date: 2020-06-23 23:11
description: Summary of everything Apple introduced WWDC 2020 Keynote.
tags: ios, wwdc2020, swift
---

# WWDC 2020 - Keynote Summary

Every year Apple promises something very special and something that has never been seen before at their keynotes. This year they already delivered - though not (yet) in any announcement fashion. Due to COVID-19, this is the first year their annual world-wide developer conference (WWDC) is held online-only.

While other major companies also had to make this switch due to the pandemic it is interesting to see how Apple is adapting to the situation as their WWDC is one of the longest-running annual conferences. Its first edition was in 1983 which is a stunning 37 years ago.

Apple already released a [broad outline of this year's edition](https://developer.apple.com/wwdc20/). Starting with the keynote and the Platforms State of the Union they announced 100+ engineering sessions as well as [1-on-1 developer labs](https://developer.apple.com/wwdc20/labs/). Already a couple of days before the event they opened up their [brand-new forums](https://developer.apple.com/wwdc20/forums/) for developers.

Being one of the most anticipated parts the opening keynote is always used as an overview to show what will be new this year across Apple's software lineup. This comes with a focus on their operating systems as well as sometimes even surprise hardware announcements.

Let's take a look at what they had in store for their WWDC 2020 keynote.

## Overall announcements

Usually, the opening remarks when Tim Cook walks on-stage are used for some general-purpose content. This year was no different. There were two topics specifically addressed which were social injustice and the global pandemic.

Apple has always been active in its support of equality and justice for everyone and they claim to once again be inspired and moved by people around the world that demand change. They call everyone for their support and committed 100 million dollars as their share.

Also, with their devices, they intend to connect everyone with their loved ones in times of social isolation. With that, this year's WWDC is set to be more inclusive than ever.

Now let's get started with their OS updates.

## iOS 14

This year's focus on the next generation of iOS is on the experience. It was rumored before that there is not a wide variety of new features but a more stable release to be expected. The opening claim is that Apple re-thought core elements of iOS that were present since day one of the iPhone.

The first big feature to be announced is **home screen widgets** (something that Android users have known for many years). Parts of them were already available before e.g. in the today view. This year they get updated with different sizes and more data that can be shown. They are discovered using the widget gallery. An example is the **Smart Stack** that automatically adapts to show different recommendations (e.g. news in the morning, calendar during the day, activity summary at night).

<figure>
    <img class="small-image" src="../../images/posts/wwdc-2020-keynote-summary/ios_widgets.png" alt="Example of the Smart Stack widget at the top of the home screen." />
    <figcaption>Example of the Smart Stack widget at the top of the home screen.</figcaption>
</figure>

Another new feature is the **App Library** which automatically organizes apps into different groups. This is similar to the stacks feature on the macOS desktop and aims to structure apps in different categories. With the help of a search field and on-device intelligence, the user can find the apps of interest more quickly. It is formed as a new page on the home screen and alongside comes the option to hide entire pages for better reachability.

<figure>
    <img class="small-image" src="../../images/posts/wwdc-2020-keynote-summary/ios_app_library.png" alt="The new App Library screen in iOS 14." />
    <figcaption>The new App Library screen in iOS 14.</figcaption>
</figure>

**Picture-in-picture,** which was previously only available on the iPad, is also coming to the iPhone. With it comes the ability to swipe up from home when a video is playing to automatically (it was not mentioned whether this can be disabled) go to picture-in-picture mode. Other apps can now be used at the same time. There are also some neat little enhancements with pinch-to-zoom and drag support. One cool feature was also shown where a swipe to the side minimizes the video while the audio continues to play.

As every year new updates to **Siri** were also announced. The experience is re-designed so that the use of Siri is not taking up the entire screen anymore. Instead, it is only shown as a bubble at the bottom of the screen. This way it does not overlay content. It can also now send audio messages and supports on-device keyboard dictation. There is also a new **Translate** app that includes audio output and supports 11 languages. It enables users to auto-detect and live-translate from and into different languages. The entire process is running on-device which allows for a high level of privacy.

The **Messages** app is also enhanced with a special focus on group chats. These include inline replies and mentions. Most of these features are already known from other messenger apps. Users now also get the ability to pin important conversations and groups with some neat design features for a more pleasant experience.

<figure>
    <img class="large-image" src="../../images/posts/wwdc-2020-keynote-summary/ios_messages.png" alt="Overview of new features in Messages on iOS." />
    <figcaption>Overview of new features in Messages on iOS.</figcaption>
</figure>

Another app that gets more functionality is **Apple Maps**. There is a new map with more features for places, landmarks, and pedestrian support which is only coming to the US, UK, Ireland, and Canada. **Guides** are introduced that include recommendations for events and places. Another big feature is **cycling support** with elevation hints and information about bike lanes and busy roads. There will also be a feature called **EV-routing** that aims to eliminate range anxiety and factors in external factors.

**CarPlay**, Apple's in-vehicle OS, also gets new functionality. There are smaller feature updates such as new wallpapers and additional parking and EV-routing features. Something that already leaked in iOS 13.5 betas is a new digital version of car-keys. This allows car owners to unlock their cars and start engines (via NFC). It's claimed to be safe (as keys are stored in the secure enclave) and even allows for key sharing via messages (with the option for restrictions for e.g. teenagers). This will already be available in iOS 13 and makes use of the U1 chip for precise location tracking.

The last topic was the new features for the **App Store**. Apple introduced **App Clips**. These are small parts of an app that can be used without installation (making them similar to [Instant Apps on Android](https://developer.android.com/topic/google-play-instant)). They pop up as cards and even allow payments via Apple Pay. They are discovered from the web or shared via messages, maps, NFC tags, or QR codes. Also, they can be triggered using the new App clip codes (supposedly making sense of [these leaks](https://www.macrumors.com/2020/05/18/ios-14-leak-apple-qr-codes/)). From a developer perspective, they need to be smaller than 10 MB and are part of an app created with a native SDK.

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/ios_app_clips.png" alt="Example of an App Clip started from Messages." />
    <figcaption>Example of an App Clip started from Messages.</figcaption>
</figure>

## iPadOS 14

Last year Apple forked iPadOS from iOS to better support the advantages and possibilities the larger screen (amongst others) of the iPad offers. This year they doubled down on that with more features coming to iPadOS 14 that increase productivity. With over 1 million apps being specifically targeted at the iPad the ecosystem is growing and developers are offering more than only larger versions of iOS apps.

One of the core new features of many of Apple's system apps is an added sidebar. It offers a Main-Detail-Flow giving users a better ability to browse and operate apps. In addition, toolbars offer new tap-and-drag gestures and come with more pop-ups to take up less space.

Overall, one focus was to allow for less distraction in app usage. For example, Siri and Calls are opening up as pop-ups and not requiring the entire screen to be taken up. This allows for better multitasking and users staying productive. It includes a better search functionality called **Universal Search** that is also available in pop-up mode. Searching through apps, contact, documents, and websites now appears to be similar to Spotlight on macOS.

One major topic was the support for the **Apple Pencil**. Handwriting detection sees great improvements allowing for copying and pasting to typed text. With the new **Scribble** functionality, users can enter handwritten text into any text field available on the system. Automatic conversion also detects phone numbers and addresses and allows for quick actions based on that.

AirPods receive a new automatic switching ability. This automatically changes the source of audio when a user e.g. finishes a call on his phone and starts a video on the iPad. If the user starts a podcast on the Mac it will automatically detect that and switch the audio source to it. It is interesting to note that this will work across more than two devices (most other wireless headphones support only two devices simultaneously).

The AirPods Pro are set to receive support for **spatial audio**. This uses special algorithms to make use of accelerometer and gyroscope and allow 3D-audio effects. It seems that Apple is really proud of the work they have achieved here and this may be one of the features that feel amazing when experienced first-hand.

As a last side note, it should be mentioned that in their overview of "other features" it was also shown that iPadOS now supports setting a default mail and browser app. This is a much-requested feature and will make a lot of users really happy.

<figure>
    <img class="large-image" src="../../images/posts/wwdc-2020-keynote-summary/ipados_default_apps.png" alt="Alongside the other features, Apple introduced default email and browser apps." />
    <figcaption>Alongside the other features, Apple introduced default email and browser apps.</figcaption>
</figure>

## watchOS 7

The announcements for watchOS 7 were made from a fitness center which already set the tone for this year's updates. Since standalone watchOS apps were introduced last year over 20k apps are now available for download on the App Store.

The first new feature is support for **multiple complications** by a single app. This means that e.g. the Nike Run Club app can show information about the pace of the last run while also showing weekly run goals in a different complication at the same time.

Together with the new watch faces also comes the option to **share watch faces** with friends using Messages or social media. These will also be curated in the App Store and show an **Add Watch Face**  button together with the option to download the apps for the complications. The sharing process is done via a long-press on the watch face itself.

The **Workouts** app will support new types such as dance, core training, functional strength training, and cool down. It will use sensor fusion to include movements in arms and lower body and combine that with the heart rate data. The accompanying Activity app on the iPhone is renamed to **Fitness** and gets a redesign with an overview of workouts, activity, and trends.

Another long-awaited feature that lands in watchOS 7 is **Sleep tracking**. It aims to meet the sleep duration goal by helping with bed- as well as the wakeup-time. The **Wind Down** feature minimizes distractions at night. It smoothly transitions to dim the screen and enable Do-not-disturb mode to enforce a personalized bed-routine. Also, it allows for a graceful wake-up experience with information about the day and battery status. Custom machine learning models analyze the sleep quality via breathing and movements and show more info on the iPhone.

With a reference to the global pandemic, there is support for hand-washing that gives users advice on the duration and quality. Again, machine learning is used to track movement and sound. 

## Privacy

In a pledge for privacy Apple once more reminded everyone that they view it as a human right. They explained how they build their products from the beginning with privacy in mind. Four principles are at the core of their strategy:

- data minimization
- on-device intelligence
- security protections
- transparency and control

Their intentions to further improve the experience in this regard include a new option for developers to support existing user accounts to be migrated to their custom **Sign in with Apple** solution.

In addition, they want to offer more control for sharing approximate location data, enhancing the recording indicator in the status bar, and giving users more tracking control in Safari as well as native apps.

One more thing (no pun intended) they introduced is a "privacy card" that will be part of the App Store page of each app. It is similar to the well-known nutrition facts label on food. Developers need to give a self-report about their practices on data usage. This includes the data they gather as well as the data that is sent to third-parties.

## Home (tvOS + HomePod)

Under the umbrella of the home category, Apple united their updates on tvOS, the HomePod as well as HomeKit. The focus this year is on ease of use, privacy, and "better together". 

<figure>
    <img class="large-image" src="../../images/posts/wwdc-2020-keynote-summary/home_overview.png" alt="Overview of the new functionalities in the Home category" />
    <figcaption>Overview of the new functionalities in the Home category</figcaption>
</figure>

**HomeKit** is going open source and they introduced an alliance with Google, Amazon as well as other companies. This aims to create a new open standard and - if implemented - allows for a wider integration and interoperability of more products (however depending on the adoption). There will also be more smart automation when incorporating new products into existing environments. Lights and Cameras allow for some neat little features such as automatic color adjustments (similar to True Tone) and activity zones (e.g. ignoring pedestrians for false alarms) and face recognition.

These new features will play well with **tvOS 14**. With picture-in-picture support, users are now able to see their camera feed popping up over their currently watched video stream. Support for Xbox controllers as well as multi-user support for more personal gaming is also introduced.

The streaming service **tv+** will be coming to more SmartTVs later in the year and a new Sci-Fi show based on books from Isaac Asimov called "Foundation" was shown in a trailer.

## macOS Big Sur

The next version of macOS is claimed to have a focus on a new design and updates to the essential apps on the system. 

An updated **Design** system includes new icons and sound effects. There is a new focus on vibrant colors and a consistent iconography across all of Apple's operating systems. It is aimed to provide a more clear focus on selected elements and usage of key colors. Below you can see examples of the updated versions of **Finder**, **Mail,** and **Photos.**

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/macos_finder.png" alt="Finder on macOS Big Sur." />
    <figcaption>Finder on macOS Big Sur.</figcaption>
</figure>

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/macos_mail.png" alt="Mail on macOS Big Sur." />
    <figcaption>Mail on macOS Big Sur.</figcaption>
</figure>

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/macos_photos.png" alt="Photos on macOS Big Sur." />
    <figcaption>Photos on macOS Big Sur.</figcaption>
</figure>

There also are design changes to toolbars in general and the menu bar specifically, introducing a more translucent design. The iWork suite also gets a redesigned appearance. The **Control center** is brought over from iOS to have more direct access to changing some of the system controls (see below).

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/macos_control_center.png" alt="Control center is now available in macOS." />
    <figcaption>Control center is now available in macOS.</figcaption>
</figure>

**Notification Center** also sees a major rework showing different widgets and notifications (that are also grouped). In addition, there is also support for the widgets that were previously introduced in iOS. These can then be placed inside of Notification Center.

One of the system apps that receive new features is **Messages**. That supports enhanced search functionality, better photos integration, and new memo functionality. It will also offer the same pinned messages and group features that also come to iOS. 

Of course, the redesigned **Apple Maps** experience will also come to the Mac. The new features include favorite places and sharing estimated arrival times.

Another technology that will see new capabilities is **Catalyst**. New examples of system apps that are built using Catalyst are Swift Playgrounds, Maps, and Messages. An overview of the new features can be seen in the overview below:

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/macos_catalyst.png" alt="New features for Catalyst." />
    <figcaption>New features for Catalyst.</figcaption>
</figure>

**Safari** sees some enhancement with regard to privacy. The **Intelligent Tracking Prevention** button gives users an overview for each visited website that allows them to see how they treat privacy (e.g. which trackers are used). The saved passwords are continuously monitored to notify the user if they appeared in any data breaches. The **Extensions** API will also be opened up to support add-ons from other browsers. This includes granular protection of the privacy access to extensions. There is also a new start page, redesigned tabs, and translation abilities.

<figure>
    <img class="medium-image" src="../../images/posts/wwdc-2020-keynote-summary/mac_safari_start_page.png" alt="Redesigned Safari start page with customization options." />
    <figcaption>Redesigned Safari start page with customization options.</figcaption>
</figure>

## Apple Silicon (ARM macs)

Apple was not done with the Mac though. In the past, there were three major transitions for the platform.    The first was the move to PowerPC as an architecture. Next, was the switch to Mac OS X and then the move to Intel. With a "huge leap forward for the Mac" the Mac will transition to its own **Apple Silicon**. With the amazing work they have done with their SoC's for the iPhone and iPad it was long rumored that Apple would switch to ARM architecture for their Mac lineup. 

They were showing some impressive numbers on their chips. Over 10 generations they shipped 2 billion SoCs. This included multiple devices such as the iPhone, iPad, and the Watch. The challenge here is to reduce power consumption while increasing performance at the same time. In their mobile devices, the advantage of having a tight integration of hard- and software always allowed for great performance alongside with optimizations for power management and battery consumption.

With a common architecture across all their devices, macOS will allow running fully native apps. The claim is that using Xcode "the vast majority of developers can get their apps up and running in days" for their custom chips. What this means in practice remains unclear but sounds promising at least.

In order to help with the integration of apps, there are three tools available. The first is **Universal 2** which will create single binaries that work on both Intel as well as Apple Silicon.

The second tool to be used for transitioning smoothly from Intel is **Rosetta 2**. It will automatically translate existing apps at install time (with a dynamic translation for JIT compilers as well). This allows for fast usage and a transparent process for users.

The third pillar is **Virtualization**. It enables e.g. Parallels Desktop to run Linux on the system. Support for running Docker is also integrated.

Apple showed examples of MS Office and Adobes Creative Cloud (Lightroom, Photoshop) running natively on their Apple Silicon. Also, Apple's own Final Cut Pro as well as Logic Pro was demoed to run smoothly (high focus on that word) on their own chips.

Another advantage of this transition is that iOS and iPadOS games and apps will run natively on the system as well. There will be no need to recompile these apps as they are already optimized to run on the ARM architecture.

Developers will be able to apply for development kits that use Mac Minis with an A12Z chip (same as the latest iPad Pro). These will feature 16 GB of memory, 512 GB SSDs, and run macOS Big Sur with Xcode to build native apps. They will ship as early as this week. Alongside the hardware will be documentation and sample code as well as private forums for developers.

Customers will be able to use the first system at the end of the year with no information about which devices will first use Apple Silicon. The transition is estimated to take 2 years but the support for Intel chips will be present for years to come.

## Summary

The keynote contained updates on Apple's major platforms as expected.  The switch to their own SoC's was rumored to happen for months in advance and they delivered on that. It will be interesting to see how fast the adoption will be and how smoothly in takes place. A special focus will be on the integration of third-party apps and services. This will also be one of the key factors of success.

The new features of iOS are not groundbreaking but solid improvements to the already rich ecosystem. There is no re-design which was expected by some experts but a more stable release can be expected. The same goes for watchOS which saw new apps and capabilities. The secret star in my opinion is macOS. The new design language looks great and provides a fresh look as well as some nice additions of Catalyst apps.

Aside from their custom chips, there were no new hardware announcements. The developer betas are available immediately with public betas coming in July (including - for the first time - watchOS). The final versions of all their operating systems will come in the fall - expectedly together with announcements of new iPhones.

Apple ended their keynote with a focus on the diverse community that allows this first remote WWDC to be a great success thanks to the wonderful people that attend it.
