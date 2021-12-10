---
title: "NextJS - Installation"
date: 2021-12-10T21:26:29+07:00
# weight: 1
# aliases: ["/first"]
tags: ["nextjs", "javascript", "typescript"]
author: ["Alvif Sandana Mahardika"]
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: false
description: "Some installation methods for NextJS"
# canonicalURL: "https://canonical.url/to/page"
disableHLJS: false # to disable highlightjs
disableShare: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
cover:
    image: "<image path/url>" # image path/url
    alt: "<alt text>" # alt text
    caption: "<text>" # display caption under cover
    relative: false # when using page bundles set this to true
    hidden: true # only hide on current single page
editPost:
    URL: ""
    Text: "Suggest Changes" # edit text
    appendFilePath: false # to append file path to Edit link
---
## NextJS Installation Methods
System Requirements:
* ```Nodejs v12.22.0``` or later
* MacOS, Windows (including WSL), and Linux are supported

### Using npx
Choose and write one of the following command in terminal, cmd, powerline, etc.

```sh
npx create-next-app@latest
```
or
```sh
yarn create-next
```
If we want to start with **Typescript**, we just use `--typescript` flag like this:
```sh
npx create-next-app@latest --typescript
```
or
```sh
yarn create-next --typescript
```

After the installation is complete, we can run:
* Run ```npm run dev``` or ```yarn dev``` in the project's root folder to start development server on ```http://localhost:3000```
* Edit ```pages/index.js``` and see the updated result in your browser.

### Manual Installation
Create new project folder with this command and `cd` into it:
```sh
mkdir your_project_name && cd your_project_name
```

Install `next`, `react`, and `react-dom` in our project:
```sh
npm install next react react-dom
# or
yarn add next react react-dom
```

Open `package.json` and add the following scripts:
```json
"scripts": {
  "dev": "next dev",
  "build": "next build",
  "start": "next start",
  "lint": "next lint"
}
```

These scripts refer to the different stages of developing an application:

* `dev` - Runs `next dev` which starts Next.js in development mode
* `build` - Runs `next build` which builds the application for production usage
* `start` - Runs `next start` which starts a Next.js production server
* `lint` - Runs `next lint` which sets up Next.js' built-in ESLint configuration

Next.js is built around the concept of pages. A page is a React Component exported from a `.js`, `.jsx`, `.ts`, or `.tsx` file in the pages directory.

Pages are associated with a route based on their file name. For example `pages/about.js` is mapped to `/about`. You can even add dynamic route parameters with the filename.

Create a pages directory inside your project.

Populate `./pages/index.js` with the following contents:
```javascript
function HomePage() {
  return <div>Welcome to Next.js!</div>
}

export default HomePage
```

So far, we get:
* Automatic compilation and bundling (with webpack and babel)
* React Fast Refresh
* Static generation and server-side rendering of `./pages/`
* Static file serving. `./public/` is mapped to `/`

Read the [docs](https://nextjs.org/docs/getting-started) for more information and happy coding ❤