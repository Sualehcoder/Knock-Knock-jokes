# Fix PowerShell Execution Policy Issue

You're encountering a PowerShell execution policy error. Here are solutions:

## Quick Fix - Use Command Prompt Instead

1. **Open Command Prompt (not PowerShell):**
   - Press `Win + R`
   - Type `cmd` and press Enter
   - Navigate to your project:
     ```cmd
     cd "C:\Users\suale\OneDrive\Desktop\knock knock"
     ```

2. **Run the batch file:**
   ```cmd
   run-project.bat
   ```

## Or Fix PowerShell Execution Policy

### Option 1: Run in VS Code Terminal (Recommended)
1. In VS Code, open a new terminal
2. Select "Command Prompt" as the terminal type (not PowerShell)
   - Click the dropdown next to the `+` button in terminal
   - Select "Command Prompt"

### Option 2: Change PowerShell Execution Policy
Run PowerShell **as Administrator** and execute:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

### Option 3: Bypass for Current Session
In PowerShell, run:
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
```
Then run your npm commands.

## Using the Batch File (Easiest)

I've created `run-project.bat` which will:
- Install all dependencies
- Start both backend and frontend servers
- Open them in separate windows

Just double-click `run-project.bat` or run it from Command Prompt!

