# Big Text

A minimal web tool that displays user-entered text in massive, screen-filling typography.

🔗 **Live Site:** [https://cathalnoonan.github.io/big-text/](https://cathalnoonan.github.io/big-text/)

---

## Features

- **Full-Screen Typography:** Scales text dynamically to fill the viewport.
- **Distraction-Free Display:** Hides input controls once submitted.
- **Clean Presentation Mode:** Disables text selection, copy/cut/paste, and context menu events to prevent accidental highlights during presentations or sign displays.
- **Lightweight & Dependency-Free:** Pure HTML/CSS/JavaScript with zero build steps or external libraries.

---

## How It Works

1. Enter your text or message into the text area.
2. Click **Submit**.
3. The form hides and your text fills the entire screen.

---

## Running Locally with Docker

You can run the site locally by mounting the `public/` directory directly into an official Nginx container without building an image:

### 1. Start the Container

**macOS / Linux:**

```bash
docker run --rm \
  --name big-text \
  -p 8080:80 \
  -v "$PWD/public:/usr/share/nginx/html:ro" \
  nginx:alpine
```

**Windows (PowerShell):**

```powershell
docker run --rm `
  --name big-text `
  -p 8080:80 `
  -v "${PWD}/public:/usr/share/nginx/html:ro" `
  nginx:alpine
```

### 2. View in Browser

- **Local:** [http://localhost:8080](http://localhost:8080)
- **Local Network (LAN):** `http://<your-lan-ip>:8080`

Any edits you make inside `public/index.html` will reflect immediately upon refreshing the page.
