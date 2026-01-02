# 🚪 Knock Knock Jokes Website

A beautiful, modern website for sharing and viewing knock knock jokes! Built with React and Express.js.

## Features

- ✨ Beautiful, modern UI with gradient backgrounds and smooth animations
- 📝 View all knock knock jokes in a card-based layout
- ➕ Submit your own knock knock jokes
- 👥 See jokes from other users
- 📱 Fully responsive design
- 🎭 Pre-loaded with famous knock knock jokes

## Project Structure

```
knock-knock-jokes/
├── client/                 # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/    # React components
│   │   ├── App.js
│   │   └── index.js
│   └── package.json
├── server/                # Express backend
│   ├── data/             # Jokes storage (JSON file)
│   ├── index.js          # Server code
│   └── package.json
├── package.json          # Root package.json
└── README.md
```

## Installation

### Step 1: Install Dependencies

Run this command in the root directory to install all dependencies:

```bash
npm run install-all
```

Or install manually:

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

## Running the Application

### Development Mode

From the root directory, run:

```bash
npm run dev
```

This will start both the backend server (port 5000) and the React frontend (port 3000).

Or run them separately:

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

The website will automatically open at `http://localhost:3000`

## API Endpoints

- `GET /api/jokes` - Get all jokes
- `POST /api/jokes` - Submit a new joke
- `GET /api/jokes/:id` - Get a specific joke
- `GET /api/health` - Health check

## Deployment

### Option 1: Deploy to Heroku

1. **Install Heroku CLI** (if not already installed)
   - Download from: https://devcenter.heroku.com/articles/heroku-cli

2. **Login to Heroku**
   ```bash
   heroku login
   ```

3. **Create a Heroku app**
   ```bash
   heroku create your-app-name
   ```

4. **Set up buildpacks**
   ```bash
   heroku buildpacks:add heroku/nodejs
   ```

5. **Add environment variable** (in Heroku dashboard or CLI)
   ```
   REACT_APP_API_URL=https://your-app-name.herokuapp.com/api
   ```

6. **Deploy**
   ```bash
   git add .
   git commit -m "Initial commit"
   git push heroku main
   ```

### Option 2: Deploy to Vercel (Frontend) + Railway/Render (Backend)

**Frontend (Vercel):**
1. Push your code to GitHub
2. Go to vercel.com and import your repository
3. Set root directory to `client`
4. Add environment variable: `REACT_APP_API_URL=https://your-backend-url.com/api`

**Backend (Railway/Render):**
1. Push your code to GitHub
2. Go to railway.app or render.com
3. Create a new service from GitHub
4. Set root directory to `server`
5. Set start command: `node index.js`

### Option 3: Deploy to Netlify (Frontend) + Any Backend Host

Similar to Vercel, but use Netlify for frontend hosting.

## Building for Production

Build the React app:

```bash
cd client
npm run build
```

The production build will be in `client/build/`

## Data Storage

Jokes are stored in `server/data/jokes.json`. This file is automatically created with sample jokes when the server first runs.

## Customization

- **Colors**: Edit gradient colors in `client/src/App.css` and `client/src/index.css`
- **Ports**: Change server port in `server/index.js` (default: 5000)
- **API URL**: Set `REACT_APP_API_URL` environment variable for production

## Troubleshooting

- **Port already in use**: Change the port in `server/index.js` or kill the process using that port
- **CORS errors**: Make sure the backend is running and CORS is enabled (already configured)
- **Jokes not loading**: Check that the server is running on port 5000

## License

MIT

---

Made with ❤️ for laughter and joy!

