# 🎮 js-dos Docker Image

## 📖 Overview

This Docker image is based on **Node.js Alpine** and is designed to run **js-dos**, an in-browser DOS emulator. It allows you to easily run DOS programs inside a Docker container with minimal configuration.

## ⭐ Features

- **Run DOS applications in a browser**
- **Lightweight Alpine-based Node.js environment**
- **Simple deployment with Docker**
- **Supports custom `.jsdos` bundles**

## 🛠 Cloning and Building Locally

### 🔄 Cloning the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/painteau/js-dos.git
cd js-dos
```

### 🔨 Building the Custom Image

To create your custom Docker image with js-dos installed, use:

```bash
docker build -t js-dos .
```

## 🚀 Running the Container

Once the image is built, you can start a container with:

```bash
docker run -d --name js-dos \
    -p 8080:8080 \
    -v /my/folder/bundle.jsdos:/app/_site/bundle.jsdos \
    js-dos
```

This will start the js-dos emulator and expose it on port `8080`. You need to provide a valid `bundle.jsdos` file for it to work correctly.

## 📦 Running from the Official Image

If you prefer to use the prebuilt image from GitHub Container Registry, run:

```bash
docker run -d --name js-dos \
    -p 8080:8080 \
    -v /my/folder/bundle.jsdos:/app/_site/bundle.jsdos \
    ghcr.io/painteau/js-dos:latest
```

## 🎮 Creating a `.jsdos` Bundle

To run DOS games with **js-dos**, you need to package them into a `.jsdos` bundle. Here’s how:

1. **Prepare your DOS game files**: Gather all the necessary `.exe`, `.bat`, and other related files into a single folder.
2. **Create a `dosbox.conf` file**: Define the startup commands for your game.
3. **Use the js-dos bundler**:
   - Install the js-dos CLI tool: `npm install -g js-dos-bundler`
   - Run the bundler: `jsdos-bundler pack /path/to/your/game-folder bundle.jsdos`
4. **Place the `bundle.jsdos` file** in the mounted volume for the container.

## 🌐 Accessing the Emulator

Once the container is running, open your browser and navigate to:

```
http://localhost:8080
```

You should see the js-dos interface loading your game.

## ⚠ Security Notice

Ensure that you expose the emulator securely, especially if running in a public environment.

## 📜 License

This project is open-source and licensed under the MIT License.

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository on GitHub: [painteau/js-dos](https://github.com/painteau/js-dos).
2. Create a new branch (`feature-branch`).
3. Commit your changes.
4. Push to your branch and create a pull request.

For major changes, please open an issue first to discuss the proposed modifications.

