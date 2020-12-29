---
date: 2020-12-30 10:00
description: Learn how to implement dark mode on a website using only CSS.
tags: css, web, publish
---

# Dark mode using only CSS

For almost 2 years dark mode has become more and more popular in design. On mobile operating systems it has been built in for 1-2 iterations and also on the web it has been on the rise more and more. 

It has become up to a point where applications that are not supporting it stand out quite a bit. Just the other day I was writing with a friend through an app that didn't support dark mode and we both felt like it was a major disadvantage of that application.

Today I want to show you one quick way to implement dark mode on your website using CSS only. You see it live in action on this very site which is built purely using HTML (with the [great Publish framework](https://github.com/JohnSundell/Publish)) and plain CSS. It uses some functionality of CSS that might not be known to everyone so I hope you find it helpful and can maybe even use it in your own work.

## Light and dark colors

First, the main point in the implementation of dark mode is colors. We want to use different text and background colors for light and dark mode. In addition we might also want to change up other colors as well, such as accent colors, secondary backgrounds or highlight colors for code, amongst others.

I'll make it easy for the sake of this tutorial and just focus on the text and background. In our example we won't use pure white and pure black since it is not recommended in various guidelines, such as the [Material Design guidelines for dark mode](https://material.io/design/color/dark-theme.html#usage) (Note: I'm not using material design for this site, but the tips and principles they provide are worth a read nonetheless). 

We'll start off with defining the CSS for the `body` of our HTML file. For those not too familiar this is straight-forward as the CSS property are `background` (used for, you guessed it, background) and `color` (for text color, great you are 2 for 2!). This gives the following CSS code:

```css
body {
    background: #edf2ef;
    color: #424242;
}
```

This works great for light mode and we have a nice color composition going. However we want to switch between light and dark mode depending on the user's preferences. Let's see how to do that next.

## Using the media query for dark mode

Media queries in CSS allow for rendering content depending on certain circumstances. The most popular example is probably varying content depending on the size of the screen allowing for responsive design.

Luckily for us there is also a media query asking for the preferred color scheme of the user called `prefers-color-scheme`. We can use this now to change the colors of our background and our text depending on the media query.

The cool thing here is that it automatically adapts depending on the system-wide preference of the device. If the user has enabled dark mode on macOS the media query will detect it. Same for iOS and Android and other operating systems.

Let's see it in action how we can add the media query to change the color scheme of our body property depending on the user's preferences:

```css
/* this is for light mode */
body {
    background: #edf2ef;
    color: #424242;
}

/* this is for dark mode */
@media (prefers-color-scheme: dark) {
    body {
        background: #292f36;
        color: #e3e4e5;
    }
}
```

As you can see we set different colors for the background and the text of our site. Once the user changes the system preferences our site will automatically adapt. 

This is great and pretty simple to achieve but we can even do better than that. Entering CSS custom properties...

## Using CSS custom properties for superpowers

In the very simplistic scope of this tutorial this works fine. We have one element that we want to style (our `body`) and while this is enough for humans it is mostly not enough for websites. In most cases we will come up with a lot of elements, custom classes, identifiers and much more.

The approach we used so far would require us to copy the entire code for the color scheme for all elements and redefine the colors there. We can do much better and CSS comes to the rescue.

CSS has an awesome feature called [custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties). It allows us to define constants that we can use across our entire CSS file. We can give them custom names and properties and here comes the best thing: you can change their values depending on media queries.

If you see where this is going, great job! We can define our colors for light mode first (this is done using the `:root` pseudo-class). Then use the media query to check for dark mode and adapt them. Then, it is possible to access them throughout the entire document by referencing that property (by simply calling `var(<name-of-property>)`.

Let's see this in action with our example with the `body` element:

```css
/* define custom properties for light mode */
:root {
    --background-color: #edf2ef;
    --text-color: #424242;
}

/* define custom properties for dark mode */
@media (prefers-color-scheme: dark) {
    :root {
        --background-color: #292f36;
        --text-color: #e3e4e5;
    }
}

/* use the properties in our element */
body {
    background: var(--background-color);
    color: var(--text-color);
}
```

The great advantage here is now that we can use the variables `--background-color` and `--text-color` for all other CSS classes and elements as well.

## Summary

We now have one place where we can change the colors and it will adapt throughout the entire site. While this might not be feasible for really large sites I think this is a great, performant and cheap way to implement dark mode on websites.

It is also possible to use it for more colors like secondary backgrounds or accent colors. We could even think of using custom properties for different sizes depending on the size of the current device. However, this would break the scope of our little tutorial here.

Thanks for following, I hope you learned something and are as much fascinated as me of how to implement dark mode in a nice way using only CSS. If you have ideas on how to improve this or just want to keep in tough feel free to hit me up [on Twitter](https://twitter.com/stefanjblos).
