# ⚠️ Node.js Installation Required

Node.js is not currently installed on your system. You need to install it before running this project.

## Quick Installation Steps:

### Option 1: Download from Official Website (Recommended)
1. Go to: https://nodejs.org/
2. Download the **LTS (Long Term Support)** version
3. Run the installer (.msi file for Windows)
4. Follow the installation wizard (accept defaults)
5. Restart your terminal/VS Code after installation

### Option 2: Using Chocolatey (if you have it)
```powershell
choco install nodejs-lts
```

### Option 3: Using Winget (Windows Package Manager)
```powershell
winget install OpenJS.NodeJS.LTS
```

## Verify Installation:

After installing, open a new terminal in VS Code and run:
```bash
node --version
npm --version
```

You should see version numbers (e.g., v20.x.x and 10.x.x)

## After Installing Node.js:

1. Close and reopen VS Code terminal
2. Navigate to your project folder:
   ```bash
   cd "C:\Users\suale\OneDrive\Desktop\knock knock"
   ```
3. Install dependencies:
   ```bash
   npm run install-all
   ```
4. Start the project:
   ```bash
   npm run dev
   ```

## Need Help?

- Node.js website: https://nodejs.org/
- VS Code terminal: Press `Ctrl + `` (backtick) or go to Terminal → New Terminal

