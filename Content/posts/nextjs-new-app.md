---
date: 2023-06-17 10:00
description: Here is my (proven) way to set up a new web app with Next.js, Typescript, and Tailwind.
image: images/previews/nextjs-new-app.png
tags: web, nextjs, setup
---

# Set up a new web app with Next.js

Every now and then you want to set up a new project for a web project. Since this is not happening so often (at least for me, as I regularly spend way too long working on things I’m eventually not releasing)…I wanted to have a straight, easy-to-follow post about it.

The stack I’m using includes the following technologies:

1. Typescript: while the anarchy that Javascript is, is fun at times…I at least prefer to have some form of type system when developing. This helps a lot during development when many errors are caught at compile time.
2. Next.js: not only since the latest release, introducing stable versions of many things, like the app directory, this is the React framework I feel most productive with. There are great alternatives, but this one just fits me and my style best so far.
3. TailwindCSS: while it doesn’t replace regular CSS knowledge, it provides me with a fast way to style my components and page without being in the way. Whenever it’s not sufficient I can always fall back to writing (S)CSS, so for me it has no downsides.

## Prerequisites

This tutorial works on macOS, Windows (with WSL), and Linux systems.

We need to have [nodejs](https://nodejs.org/en) installed on our system (minimum version is `16.8`). I recommend a tool to handle multiple `node` versions, using a tool like [nvm](https://github.com/nvm-sh/nvm).

## Set up

We’ll use `npx` to setup the project, but it will as us for a few configuration options, so we’re going through them step-by-step to understand what’s happening.

The initial command to get the latest version is the following:

```bash
npx create-next-app@latest
```

It will then ask us to select a few options. I’ll explain what these do and how I set them (reminder: this is only personal preference, feel free to pick whatever you like).

<aside>
⚠️ If we haven’t run the command before it might ask to install the <code>create-next-app</code> package. Confirm with <code>y</code> to finish it running.
</aside>

Then we configure the app as follows:

1. `What is your project named?`<br />
   Here you can set whatever you like. It will create a new folder in your current folder with all the project files. An example name is `test-app`.
2. `Would you like to use Typescript with this project?`<br />
   **Yes**, at least I want that. Feel free to stick to Javascript if you’re comfortable with it, but at least consider having a look at Typescript if you haven’t before.
3. `Would you like to use ESLint with this project?`<br />
   **Yes**. When configured correctly (e.g. with [this package](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) in VSCode) [ESLint](https://eslint.org/) is a great tool to help you spot issues with your code during development. Check out their [documentation](https://eslint.org/docs/latest/) for more info. I personally love when I can spot errors during development instead of weird runtime issues, so it’s an easy choice for me.
4. `Would you like to use Tailwind CSS with this project?`<br />
   **Yes**. I mentioned this before, but I really like [Tailwind](https://tailwindcss.com/). Their [docs](https://tailwindcss.com/docs/installation) are awesome, and the ecosystem is amazing. If you use VSCode, consider [this package](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss) to make development more smooth. If you’re a fan of [prettier](https://prettier.io/), they even have a [plugin](https://github.com/tailwindlabs/prettier-plugin-tailwindcss) for that.
   Note: I recommend a strong basic knowledge of CSS when using libraries like Tailwind, so make sure to get the basics in.
5. `Would you like to use src/ directory with this project?`<br />
   **No**. Comes down to personal preference again. With the new App Router in Next, we’ll get an `app` directory anyway that will contain our code, so in my eyes it makes the `src/` directory abundant. If you prefer to have it, feel free to use it, there’s no downside here.
6. `Use App Router (recommended)?`<br />
   **Yes**. It’s stable since the latest major release of Next and while it has a bit of a learning curve, it allows you to build great applications mixing the different web development paradigms as you need them. Check out more info [here](https://nextjs.org/docs/app/api-reference).
7. `Would you like to customize the default import alias?`<br />
   **No**. This allows us to import files with a different alias. This can give you shorter `import` statements. I don’t really mind long imports as it makes it more clear where things are coming from, but if you want to configure it, feel free to read more [here](https://nextjs.org/docs/app/building-your-application/configuring/absolute-imports-and-module-aliases).

That’s it. That will setup a new project. You can `cd test-app` (or the name you gave the project) and run the following command to run your application:

```bash
// using npm
npm run dev

// using yarn
yarn dev
```

You can also open up VSCode in the current directory with the handy `code .` command inside of your terminal.

## Conclusion

This sets up a new project with a clean slate and latest technologies. Again, i want to state that this is just my preferred setup and you can surely choose different options for everything here.

I don’t think there is one best solution, but that whatever gives you the most productivity to build amazing experiences is the best tool to use.

Let me know what you are going to build next and connect with me on [Twitter](https://twitter.com/stefanjblos), [LinkedIn](https://www.linkedin.com/in/stefan-blos/), [Mastodon](https://mastodon.social/@stefanblos), or [Bluesky](https://bsky.app/profile/stefanblos.com).
