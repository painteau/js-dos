# 🎮 js-dos Docker Image

## ⭐ Features
- 🖥 **Run DOS applications in a browser**
- 🏗 **Lightweight Alpine-based Node.js environment**
- 🚀 **Simple deployment with Docker**
- 🎮 **Supports custom `.jsdos` bundles**

## 📌 Prerequisites
- 🐳 **Docker** installed on your system.
- 📂 A valid **`.jsdos`** bundle file to run a DOS program.

## 🛠 Setup & Installation

### 1️⃣ Cloning the Repository
Clone the repository to your local machine:

```bash
git clone https://github.com/painteau/js-dos.git
cd js-dos
```

### 2️⃣ Building the Custom Image
To create your custom Docker image with **js-dos** installed, use:

```bash
docker build -t js-dos .
```

## 🔨 Running js-dos Locally
To run the container and serve the emulator:

```bash
docker run -d --name js-dos \
    -p 8080:8080 \
    -v /my/folder/bundle.jsdos:/app/_site/bundle.jsdos \
    js-dos
```

This will start **js-dos** and expose it on port `8080`. You need to provide a valid `bundle.jsdos` file for it to work correctly.

## 🐳 Running with Docker (GHCR)
**js-dos** is available on GitHub Container Registry (GHCR):

1️⃣ **Pull the Docker Image**

```bash
docker pull ghcr.io/painteau/js-dos:latest
```

2️⃣ **Run the Container**

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

## ⚙ Configuration
| Option | Description |
|---------|-------------|
| `-p 8080:8080` | Exposes the emulator on port 8080 |
| `-v /path/to/bundle.jsdos:/app/_site/bundle.jsdos` | Mounts the `.jsdos` file inside the container |

## 🔧 Troubleshooting
- Ensure that your `bundle.jsdos` file is valid and correctly mounted.
- Verify that the container is running using:

```bash
docker ps
```

## 📜 License
This project is licensed under the MIT License.

## ⚠ Security Notice
Ensure that you expose the emulator securely and restrict access if necessary when deploying in a production environment.

## 💡 Contributing
1️⃣  **Fork the repository** on GitHub: [painteau/js-dos](https://github.com/painteau/js-dos).
2️⃣  **Create a new branch** (`feature-branch`).
3️⃣  **Commit your changes**.
4️⃣  **Push to your branch and create a pull request**.

For major changes, please open an issue first to discuss the proposed modifications.

