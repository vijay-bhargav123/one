<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>My Frontend Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      background: #0f172a;
      color: #e5e7eb;
      line-height: 1.6;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    .container {
      width: 100%;
      max-width: 1100px;
      margin: 0 auto;
      padding: 1.5rem;
    }

    header {
      border-bottom: 1px solid #1f2937;
      position: sticky;
      top: 0;
      backdrop-filter: blur(12px);
      background: rgba(15, 23, 42, 0.85);
      z-index: 10;
    }

    .nav {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo {
      font-weight: 700;
      font-size: 1.3rem;
      letter-spacing: 0.05em;
    }

    .nav-links {
      display: flex;
      gap: 1.25rem;
      font-size: 0.95rem;
    }

    .nav-links a {
      opacity: 0.8;
    }

    .nav-links a:hover {
      opacity: 1;
    }

    .btn {
      padding: 0.6rem 1.4rem;
      border-radius: 999px;
      border: 1px solid #38bdf8;
      background: #0f172a;
      color: #e5e7eb;
      font-size: 0.9rem;
      cursor: pointer;
      transition: transform 0.15s ease, box-shadow 0.15s ease, background 0.15s ease;
    }

    .btn-primary {
      background: linear-gradient(135deg, #38bdf8, #6366f1);
      border: none;
      color: white;
      font-weight: 600;
      box-shadow: 0 10px 25px rgba(56, 189, 248, 0.3);
    }

    .btn:hover {
      transform: translateY(-1px);
      box-shadow: 0 14px 30px rgba(15, 23, 42, 0.6);
    }

    main {
      padding-top: 2rem;
      padding-bottom: 3rem;
    }

    .hero {
      display: grid;
      grid-template-columns: minmax(0, 1.2fr) minmax(0, 1fr);
      gap: 2.5rem;
      align-items: center;
    }

    .hero-title {
      font-size: clamp(2rem, 4vw, 3rem);
      font-weight: 800;
      margin-bottom: 0.75rem;
    }

    .hero-title span {
      background: linear-gradient(135deg, #38bdf8, #a855f7);
      -webkit-background-clip: text;
      color: transparent;
    }

    .hero-subtitle {
      color: #9ca3af;
      margin-bottom: 1.5rem;
      max-width: 32rem;
    }

    .hero-actions {
      display: flex;
      gap: 1rem;
      flex-wrap: wrap;
      margin-bottom: 2rem;
    }

    .hero-meta {
      display: flex;
      gap: 2rem;
      flex-wrap: wrap;
      font-size: 0.85rem;
      color: #9ca3af;
    }

    .hero-card {
      background: radial-gradient(circle at top left, rgba(56, 189, 248, 0.25), transparent 55%),
                  radial-gradient(circle at bottom right, rgba(129, 140, 248, 0.25), transparent 55%),
                  #020617;
      border-radius: 1.5rem;
      padding: 1.8rem 1.5rem;
      border: 1px solid rgba(148, 163, 184, 0.3);
      box-shadow: 0 18px 45px rgba(15, 23, 42, 0.9);
    }

    .hero-card h3 {
      font-size: 1rem;
      text-transform: uppercase;
      letter-spacing: 0.15em;
      color: #9ca3af;
      margin-bottom: 0.75rem;
    }

    .hero-card p {
      font-size: 0.9rem;
      color: #e5e7eb;
      margin-bottom: 1.2rem;
    }

    .pill {
      display: inline-flex;
      align-items: center;
      gap: 0.3rem;
      font-size: 0.75rem;
      background: rgba(15, 23, 42, 0.9);
      border-radius: 999px;
      padding: 0.25rem 0.7rem;
      border: 1px solid rgba(148, 163, 184, 0.5);
    }

    .input-group {
      display: flex;
      flex-direction: column;
      gap: 0.4rem;
      margin-bottom: 0.9rem;
    }

    .input-group label {
      font-size: 0.8rem;
      color: #cbd5f5;
    }

    .input-group input,
    .input-group textarea {
      padding: 0.55rem 0.8rem;
      border-radius: 0.7rem;
      border: 1px solid #1f2937;
      background: rgba(15, 23, 42, 0.9);
      color: #e5e7eb;
      font-size: 0.85rem;
      outline: none;
      transition: border 0.15s ease, box-shadow 0.15s ease, background 0.15s ease;
      resize: vertical;
      min-height: 2.4rem;
    }

    .input-group input:focus,
    .input-group textarea:focus {
      border-color: #38bdf8;
      box-shadow: 0 0 0 1px rgba(56, 189, 248, 0.4);
      background: rgba(15, 23, 42, 1);
    }

    .features {
      margin-top: 3rem;
      display: grid;
      grid-template-columns: repeat(3, minmax(0, 1fr));
      gap: 1.5rem;
    }

    .feature-card {
      border-radius: 1.2rem;
      border: 1px solid #1f2937;
      padding: 1.2rem;
      background: radial-gradient(circle at top, rgba(30, 64, 175, 0.4), transparent 55%),
                  #020617;
      box-shadow: 0 10px 25px rgba(15, 23, 42, 0.8);
    }

    .feature-title {
      font-size: 0.95rem;
      margin-bottom: 0.4rem;
      font-weight: 600;
    }

    .feature-text {
      font-size: 0.8rem;
      color: #9ca3af;
    }

    footer {
      border-top: 1px solid #1f2937;
      padding: 1.2rem 0;
      text-align: center;
      font-size: 0.8rem;
      color: #6b7280;
    }

    @media (max-width: 900px) {
      .hero {
        grid-template-columns: minmax(0, 1fr);
      }
    }

    @media (max-width: 640px) {
      .nav-links {
        display: none;
      }

      .features {
        grid-template-columns: minmax(0, 1fr);
      }

      .hero-card {
        border-radius: 1.1rem;
      }
    }
  </style>
</head>
<body>
  <header>
    <div class="container nav">
      <div class="logo">MyApp</div>
      <nav class="nav-links">
        <a href="#features">Features</a>
        <a href="#contact">Contact</a>
        <a href="#start">Get Started</a>
      </nav>
      <button class="btn">Login</button>
    </div>
  </header>

  <main>
    <section class="container hero" id="start">
      <div>
        <h1 class="hero-title">
          Build your next <span>modern</span> frontend faster.
        </h1>
        <p class="hero-subtitle">
          Clean, minimal starter layout ready for you to plug your own content,
          APIs, or backend into. No UI frameworks, no nonsense.
        </p>

        <div class="hero-actions">
          <button class="btn btn-primary">Get Started</button>
          <button class="btn">View Docs</button>
        </div>

        <div class="hero-meta">
          <div>
            <strong>Responsive</strong><br />
            Works on desktop, tablet, mobile.
          </div>
          <div>
            <strong>Pure HTML/CSS</strong><br />
            Easy to integrate anywhere.
          </div>
        </div>
      </div>

      <aside class="hero-card" id="contact">
        <h3>Contact</h3>
        <p>Quick demo form. Hook this to your backend or JS later.</p>

        <form id="contact-form">
          <div class="input-group">
            <label for="name">Name</label>
            <input id="name" name="name" type="text" placeholder="Your name" />
          </div>

          <div class="input-group">
            <label for="email">Email</label>
            <input id="email" name="email" type="email" placeholder="you@example.com" />
          </div>

          <div class="input-group">
            <label for="message">Message</label>
            <textarea id="message" name="message" placeholder="Tell me what you’re building"></textarea>
          </div>

          <button type="submit" class="btn btn-primary" style="width: 100%;">
            Send Message
          </button>
        </form>

        <div style="margin-top: 0.8rem;">
          <span class="pill">
            <span>★</span> No backend wired yet
          </span>
        </div>
      </aside>
    </section>

    <section class="container" id="features">
      <h2 style="font-size: 1.4rem; margin-bottom: 1rem;">Features</h2>
      <div class="features">
        <div class="feature-card">
          <div class="feature-title">Modern layout</div>
          <p class="feature-text">
            Hero section, navigation, feature grid, and contact form all in one simple file.
          </p>
        </div>
        <div class="feature-card">
          <div class="feature-title">Easy to customize</div>
          <p class="feature-text">
            Change colors, fonts, and content quickly without digging through a mess of components.
          </p>
        </div>
        <div class="feature-card">
          <div class="feature-title">Ready for integration</div>
          <p class="feature-text">
            Plug in your APIs, add JS frameworks, or connect to your backend of choice.
          </p>
        </div>
      </div>
    </section>
  </main>

  <footer>
    &copy; <span id="year"></span> MyApp. All rights reserved.
  </footer>

  <script>
    // Simple JS just to show you can wire logic.
    document.getElementById("year").textContent = new Date().getFullYear();

    document.getElementById("contact-form").addEventListener("submit", function (e) {
      e.preventDefault();
      alert("Form submit stub. Connect this to your backend or JS logic.");
    });
  </script>
</body>
</html>
