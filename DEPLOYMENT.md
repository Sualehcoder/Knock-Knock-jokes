# Deployment Guide

This guide will help you deploy your Knock Knock Jokes website to various platforms.

## Quick Start - Local Development

1. **Install dependencies:**
   ```bash
   npm run install-all
   ```

2. **Run the application:**
   ```bash
   npm run dev
   ```

3. **Open your browser:**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:5000/api/jokes

## Deployment Options

### Option 1: Deploy to Heroku (Full Stack - Recommended for Beginners)

Heroku can host both frontend and backend together.

#### Steps:

1. **Install Heroku CLI**
   - Download from: https://devcenter.heroku.com/articles/heroku-cli

2. **Login to Heroku**
   ```bash
   heroku login
   ```

3. **Create a Heroku app**
   ```bash
   heroku create your-app-name
   ```

4. **Set environment variables**
   ```bash
   heroku config:set NODE_ENV=production
   ```

5. **Build and deploy**
   ```bash
   # Build the React app first
   cd client
   npm run build
   cd ..
   
   # Deploy to Heroku
   git init
   git add .
   git commit -m "Initial commit"
   git push heroku main
   ```

6. **Open your app**
   ```bash
   heroku open
   ```

**Note:** The Procfile is already configured to run the server, which will serve the React build in production.

---

### Option 2: Deploy Frontend to Vercel + Backend to Railway

#### Frontend (Vercel):

1. **Push code to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin your-github-repo-url
   git push -u origin main
   ```

2. **Deploy to Vercel:**
   - Go to https://vercel.com
   - Sign up/login with GitHub
   - Click "New Project"
   - Import your repository
   - Set **Root Directory** to `client`
   - Add environment variable:
     - Name: `REACT_APP_API_URL`
     - Value: `https://your-backend-url.railway.app/api` (you'll get this after deploying backend)
   - Click "Deploy"

#### Backend (Railway):

1. **Go to Railway:**
   - Visit https://railway.app
   - Sign up/login with GitHub

2. **Create new project:**
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your repository

3. **Configure:**
   - Set **Root Directory** to `server`
   - Set **Start Command** to `node index.js`
   - Railway will automatically detect Node.js

4. **Get your URL:**
   - Railway will provide a URL like `https://your-app.railway.app`
   - Update the `REACT_APP_API_URL` in Vercel with this URL + `/api`

---

### Option 3: Deploy Frontend to Netlify + Backend to Render

#### Frontend (Netlify):

1. **Push to GitHub** (same as Vercel steps)

2. **Deploy to Netlify:**
   - Go to https://netlify.com
   - Sign up/login
   - Click "Add new site" → "Import an existing project"
   - Connect to GitHub and select your repo
   - Set **Base directory** to `client`
   - Set **Build command** to `npm run build`
   - Set **Publish directory** to `client/build`
   - Add environment variable:
     - `REACT_APP_API_URL` = `https://your-backend-url.onrender.com/api`

#### Backend (Render):

1. **Go to Render:**
   - Visit https://render.com
   - Sign up/login with GitHub

2. **Create new Web Service:**
   - Click "New" → "Web Service"
   - Connect your GitHub repository
   - Set **Root Directory** to `server`
   - Set **Build Command** to `npm install`
   - Set **Start Command** to `node index.js`
   - Choose "Free" plan

3. **Get your URL:**
   - Render will provide a URL
   - Update `REACT_APP_API_URL` in Netlify

---

### Option 4: Deploy to DigitalOcean App Platform

1. **Push to GitHub**

2. **Go to DigitalOcean:**
   - Visit https://cloud.digitalocean.com
   - Go to "Apps" → "Create App"

3. **Configure:**
   - Connect GitHub repository
   - Add two components:
     - **Component 1 (Backend):**
       - Source: `server/`
       - Build command: `npm install`
       - Run command: `node index.js`
     - **Component 2 (Frontend):**
       - Source: `client/`
       - Build command: `npm install && npm run build`
       - Output directory: `build`
   - Add environment variable to frontend:
     - `REACT_APP_API_URL` = `https://your-backend-url.ondigitalocean.app/api`

---

## Environment Variables

### Frontend:
- `REACT_APP_API_URL` - Your backend API URL (e.g., `https://api.example.com/api`)

### Backend:
- `PORT` - Server port (usually set automatically by hosting platform)
- `NODE_ENV` - Set to `production` for production builds

---

## Post-Deployment Checklist

- [ ] Test that jokes load correctly
- [ ] Test submitting a new joke
- [ ] Check that CORS is working (if frontend and backend are on different domains)
- [ ] Verify the API endpoints are accessible
- [ ] Test on mobile devices (responsive design)

---

## Troubleshooting

### CORS Errors
If you get CORS errors, make sure:
- Backend has `cors` middleware enabled (already configured)
- Frontend `REACT_APP_API_URL` points to the correct backend URL

### Jokes Not Loading
- Check that the backend server is running
- Verify the API URL in frontend environment variables
- Check browser console for errors

### Build Failures
- Make sure all dependencies are installed
- Check that Node.js version is compatible (14+ recommended)
- Review build logs for specific errors

---

## Maintenance

### Adding/Removing Jokes
Jokes are stored in `server/data/jokes.json`. You can:
- Edit this file directly on your server
- Use the web interface to add jokes
- Manually edit the JSON file

### Backing Up Data
Regularly backup `server/data/jokes.json` to prevent data loss.

---

Good luck with your deployment! 🚀

