# 🚀 Flaunch

**Flaunch** is a powerful CLI tool that helps you quickly set up a new Flutter project with a well-structured architecture, essential dependencies, and boilerplate code.

---

## **✨ Features**

✅ **Automated Project Setup** – Creates a structured Flutter project.\
✅ **Predefined Dependencies** – Installs commonly used packages like `flutter_bloc`, `dio`, `get_it`, etc.\
✅ **Boilerplate Code** – Generates base code to kickstart your project.\
✅ **Linting Configuration** – Sets up `analysis_options.yaml` for best practices.\
✅ **Easy to Use** – One command to get started!

---

## **📥 Installation**

You can install **Flaunch** globally using Dart:

```sh
dart pub global activate flaunch
```

After installation, ensure `~/.pub-cache/bin` is in your system's `PATH`.

For macOS/Linux, add this to your `~/.bashrc` or `~/.zshrc`:

```sh
export PATH="$PATH:$HOME/.pub-cache/bin"
```

For Windows (PowerShell):

```powershell
$env:Path += ";C:\Users\YourUsername\AppData\Local\Pub\Cache\bin"
```

---

## **🚀 Usage**

### **Create a New Flutter Project Structure**

```sh
flaunch --setup
```

### **Add Essential Dependencies**

```sh
flaunch --dependencies
```

### **Generate Boilerplate Code**

```sh
flaunch --boilerplate
```

### **Configure Lint Rules**

```sh
flaunch --lint
```

### **Run All Tasks at Once**

```sh
flaunch --all
```

For more options, run:

```sh
flaunch --help
```

---

## **📦 Included Dependencies**

The following dependencies are automatically added:

- 🏗 **State Management**: `flutter_bloc`, `hydrated_bloc`
- 🌐 **Networking**: `dio`
- 💾 **Storage**: `path_provider`
- ✅ **Utility**: `get_it`, `injectable`, `equatable`
- ⚙ **Code Generation**: `build_runner`, `json_serializable`, `freezed`

---

## **🛠 Project Structure**

After running `flaunch --setup`, your project will look like this:

```
my_flutter_app/
├── lib/
│   ├── core/
│   │   ├── services/
│   │   ├── models/
│   │   ├── utils/
│   ├── features/
│   │   ├── auth/
│   │   │   ├── presentation/
│   │   │   ├── data/
│   │   │   ├── domain/
│   ├── main.dart
├── pubspec.yaml
├── analysis_options.yaml
```

---

## **💡 Contributing**

We welcome contributions! If you’d like to contribute:

1. **Fork** this repository.
2. **Create** a feature branch (`git checkout -b feature-branch`).
3. **Commit** your changes (`git commit -m "Add new feature"`).
4. **Push** to the branch (`git push origin feature-branch`).
5. **Open a Pull Request**.

---

## **📄 License**

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## **💬 Need Help?**

If you encounter any issues or have suggestions, feel free to open an [issue](https://github.com/yourusername/flaunch/issues) on GitHub.

---

🔥 **Kickstart your Flutter projects effortlessly with Flaunch!** 🚀

