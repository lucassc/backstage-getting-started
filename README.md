(My)
# backstage-getting-started

## Backstage Pre-requisites

This repository contains information on the prerequisites you need to have in order to use Backstage, a platform for building developer portals.

### Fedora

If you are running (Fedora, Debian or Ubuntu) , run:

```BASH
sudo make
```
if not, follow the next steps

### Installing Node.js and Yarn

Backstage is built with Node.js and uses Yarn as its package manager. To get started, make sure you have Node.js and Yarn installed on your system. You can download Node.js from the [official website](https://nodejs.org/en), or use a package manager like [Homebrew](https://brew.sh/) (for Mac) or [Chocolatey](https://chocolatey.org/) (for Windows) to install it. Once you have Node.js installed, you can install Yarn by running the following command:

```BASH
npm install -g yarn
```

### Setting up a Backstage project

Once you have Node.js and Yarn installed, you can create a new Backstage project by following the [Getting Started guide](https://backstage.io/docs/getting-started/). This guide will walk you through the process of creating a new Backstage project, setting up a development environment, and running the app.

### Installing Backstage plugins

Backstage is highly modular and extensible, and you can add new features to your app by installing plugins. You can find a list of available plugins on the [Backstage Plugin Catalog](https://backstage.io/plugins/). To install a plugin, simply run the following command:

```BASH
yarn add @backstage/plugin-name
```

Replace plugin-name with the name of the plugin you want to install.

### Run getting-started-app on Codespaces
```BASH
make && \
cd getting-started-app && \
yarn install && \
yarn dev
```

### Conclusion

That's it! With Node.js, Yarn, and the Backstage CLI installed, you're ready to start building your own developer portal using Backstage. If you have any questions, feel free to check out the [official documentation](https://backstage.io/docs/overview/what-is-backstage/) or ask for help on the [Backstage community forum](https://github.com/backstage/backstage/discussions).