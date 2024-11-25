# How to Debug in GitHub Codespaces

## Prerequisites
Ensure you have the following extensions installed in your Codespace:
- **Visual Studio Code Remote - Containers**: Allows you to use a container as a full-featured development environment.
- **Debugger for Chrome**: Debug your JavaScript code in the Chrome browser, or any other target that supports the Chrome Debugging Protocol.
- **Python**: If you are working with Python, this extension provides rich support for Python.

## Steps to Debug

1. **Open your Codespace**:
    - Navigate to your repository on GitHub.
    - Click on the `Code` button and select `Open with Codespaces`.
    - Choose an existing Codespace or create a new one.

2. **Set Up Your Debug Configuration**:
    - Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS).
    - Type `Debug: Open launch.json` and select it.
    - Choose the environment you are working with (e.g., Node.js, Python, etc.).
    - This will create a `launch.json` file in the `.vscode` directory with default configurations.

3. **Add Breakpoints**:
    - Open the file you want to debug.
    - Click in the gutter next to the line numbers to add a breakpoint (a red dot will appear).

4. **Start Debugging**:
    - Open the Run and Debug view by clicking on the Debug icon in the Activity Bar on the side of the window.
    - Click the green play button or press `F5` to start debugging.
    - Your application will start, and execution will pause at the breakpoints you have set.

5. **Inspect Variables and Call Stack**:
    - Use the Debug toolbar to step through your code.
    - Inspect variables in the Variables pane.
    - View the call stack to understand the sequence of function calls.

6. **Use the Debug Console**:
    - You can evaluate expressions and interact with your application in the Debug Console.

## Additional Tips
- **Hot Reloading**: If your environment supports it, enable hot reloading to see changes without restarting the debugger.
- **Logging**: Use logging to output important information to the console, which can help in understanding the flow of your application.

By following these steps, you should be able to effectively debug your code within GitHub Codespaces.

## Updating `launch.json` for Shell Debugging

To debug shell scripts, you need to update your `launch.json` file with the appropriate configuration. Follow these steps:

1. **Open `launch.json`**:
    - Open the Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P` on macOS).
    - Type `Debug: Open launch.json` and select it.

2. **Add Shell Debug Configuration**:
    - Add the following configuration to the `configurations` array in your `launch.json` file:

    ```json
    {
        "type": "bashdb",
        "request": "launch",
        "name": "Bash-Debug (simplified)",
        "program": "${file}",
        "args": [],
        "env": {},
        "pathBash": "/bin/bash",
        "trace": true,
        "showDebugOutput": true
    }
    ```

3. **Save the `launch.json` File**:
    - Save the changes to your `launch.json` file.

This configuration uses the `bashdb` debugger to debug shell scripts. Make sure you have the necessary extensions installed to support shell debugging.

By updating your `launch.json` file with this configuration, you can set breakpoints and debug your shell scripts within GitHub Codespaces.