# Quick Setup Guide

## Prerequisites

Make sure you have Node.js installed on your computer:
- Download from: https://nodejs.org/ (LTS version recommended)
- Verify installation: Open PowerShell/Command Prompt and run `node --version`

## Installation Steps

### Step 1: Install All Dependencies

Open PowerShell or Command Prompt in the project folder and run:

```bash
npm run install-all
```

This will install dependencies for:
- Root project
- Backend server
- React frontend

**OR** install manually:

```bash
# Install root dependencies
npm install

# Install server dependencies
cd server
npm install

# Install client dependencies
cd ../client
npm install
```

### Step 2: Start the Application

From the root directory, run:

```bash
npm run dev
```

This starts both:
- Backend server on http://localhost:5000
- React frontend on http://localhost:3000

The browser should automatically open to http://localhost:3000

### Step 3: Test the Application

1. You should see the website with pre-loaded knock knock jokes
2. Click "+ Add Your Joke" to submit a new joke
3. Fill in the form and submit
4. Your joke should appear in the list!

## Running Separately

If you prefer to run frontend and backend separately:

**Terminal 1 - Backend:**
```bash
cd server
npm start
```

**Terminal 2 - Frontend:**
```bash
cd client
npm start
```

## Troubleshooting

### Port Already in Use
If port 3000 or 5000 is already in use:
- Close other applications using those ports
- Or change the port in the respective configuration files

### Dependencies Not Installing
- Make sure you have Node.js installed
- Try deleting `node_modules` folders and running `npm install` again
- On Windows, you might need to run PowerShell as Administrator

### Server Not Starting
- Check that port 5000 is available
- Make sure all dependencies are installed
- Check the console for error messages

## Next Steps

- Read `README.md` for more information
- Read `DEPLOYMENT.md` for deployment instructions
- Customize the colors and styling in `client/src/App.css`

Enjoy your Knock Knock Jokes website! 🚪😄

