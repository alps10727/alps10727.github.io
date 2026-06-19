<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NominalCoin — Digital Economy for Everyone</title>
  <meta name="description" content="NominalCoin is a fair, transparent, community-powered mobile earning platform. Build your digital wealth through consistent participation — not privilege." />
  <meta property="og:title" content="NominalCoin — Digital Economy for Everyone" />
  <meta property="og:description" content="Mine. Earn. Empower. A transparent mobile earning experience built on fairness." />
  <meta property="og:type" content="website" />
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdn.jsdelivr.net/npm/remixicon@4.6.0/fonts/remixicon.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&family=Space+Grotesk:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

  <script>
    tailwind.config = {
      theme: {
        extend: {
          fontFamily: {
            sans: ['Inter', 'sans-serif'],
            display: ['Space Grotesk', 'sans-serif'],
          },
          borderRadius: {
            '4xl': '2rem',
            '5xl': '2.5rem',
          },
          keyframes: {
            floatSlow: {
              '0%,100%': { transform: 'translateY(0px) translateX(0px)' },
              '33%': { transform: 'translateY(-18px) translateX(8px)' },
              '66%': { transform: 'translateY(-8px) translateX(-12px)' },
            },
            floatMed: {
              '0%,100%': { transform: 'translateY(0px)' },
              '50%': { transform: 'translateY(-14px)' },
            },
            gridMove: {
              '0%': { backgroundPosition: '0 0' },
              '100%': { backgroundPosition: '40px 40px' },
            },
          },
          animation: {
            'float-slow': 'floatSlow 8s ease-in-out infinite',
            'float-med': 'floatMed 6s ease-in-out infinite',
            'grid-move': 'gridMove 25s linear infinite',
          }
        }
      }
    }
  </script>

  <style>
    :root {
      --c-teal: #00D4D4;
      --c-teal-dark: #009A9A;
      --c-teal-deeper: #006E6E;
      --c-teal-faint: rgba(0, 212, 212, 0.06);
      --c-teal-glow: rgba(0, 212, 212, 0.25);
      --c-bg: #04090F;
      --c-bg2: #060E1C;
      --c-card: rgba(0, 212, 212, 0.05);
      --c-border: rgba(0, 212, 212, 0.14);
      --c-text: #E8F4F8;
      --c-muted: #6B8FA8;
    }

    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }

    body {
      background-color: var(--c-bg);
      color: var(--c-text);
      font-family: 'Inter', sans-serif;
      overflow-x: hidden;
      min-height: 100vh;
    }

    .font-display { font-family: 'Space Grotesk', sans-serif; }

    /* Background grid */
    .bg-grid {
      position: fixed;
      inset: 0;
      pointer-events: none;
      z-index: 0;
      background-image:
        linear-gradient(rgba(0,212,212,0.04) 1px, transparent 1px),
        linear-gradient(90deg, rgba(0,212,212,0.04) 1px, transparent 1px);
      background-size: 40px 40px;
      animation: gridMove 25s linear infinite;
    }

    /* Orb decorations */
    .orb {
      position: absolute;
      border-radius: 50%;
      filter: blur(80px);
      pointer-events: none;
      z-index: 0;
    }
    .orb-1 { width: 500px; height: 500px; background: radial-gradient(circle, rgba(0,212,212,0.12), transparent 70%); top: -150px; right: -100px; }
    .orb-2 { width: 400px; height: 400px; background: radial-gradient(circle, rgba(0,150,180,0.10), transparent 70%); bottom: -100px; left: -80px; }
    .orb-3 { width: 300px; height: 300px; background: radial-gradient(circle, rgba(0,212,212,0.08), transparent 70%); top: 40%; left: 50%; transform: translate(-50%,-50%); }

    /* Glass cards */
    .glass {
      background: var(--c-card);
      border: 1px solid var(--c-border);
      backdrop-filter: blur(12px);
      -webkit-backdrop-filter: blur(12px);
    }

    .glass-hover {
      transition: border-color 0.3s, box-shadow 0.3s, transform 0.3s;
    }
    .glass-hover:hover {
      border-color: rgba(0, 212, 212, 0.35);
      box-shadow: 0 8px 32px rgba(0, 212, 212, 0.12);
      transform: translateY(-4px);
    }

    /* Text utilities */
    .teal { color: var(--c-teal); }
    .teal-glow { color: var(--c-teal); text-shadow: 0 0 20px rgba(0,212,212,0.5); }

    .grad-text {
      background: linear-gradient(135deg, #00D4D4 0%, #00AACC 50%, #0088BB 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    /* Buttons */
    .btn-primary {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: linear-gradient(135deg, #00D4D4, #009A9A);
      color: #04090F;
      font-weight: 700;
      font-size: 0.95rem;
      padding: 14px 28px;
      border-radius: 12px;
      text-decoration: none;
      transition: all 0.25s;
      box-shadow: 0 4px 20px rgba(0,212,212,0.3);
      border: none;
      cursor: pointer;
    }
    .btn-primary:hover {
      box-shadow: 0 8px 32px rgba(0,212,212,0.45);
      transform: translateY(-2px);
      background: linear-gradient(135deg, #00E4E4, #00B4B4);
    }

    .btn-outline {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      background: transparent;
      color: var(--c-teal);
      font-weight: 600;
      font-size: 0.95rem;
      padding: 13px 27px;
      border-radius: 12px;
      border: 1.5px solid rgba(0,212,212,0.4);
      text-decoration: none;
      transition: all 0.25s;
      cursor: pointer;
    }
    .btn-outline:hover {
      border-color: var(--c-teal);
      background: rgba(0,212,212,0.08);
      box-shadow: 0 4px 16px rgba(0,212,212,0.15);
      transform: translateY(-2px);
    }

    /* Badge */
    .badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: rgba(0,212,212,0.1);
      border: 1px solid rgba(0,212,212,0.25);
      color: var(--c-teal);
      font-size: 0.78rem;
      font-weight: 600;
      padding: 5px 12px;
      border-radius: 100px;
      letter-spacing: 0.03em;
    }

    /* Section divider line */
    .section-line {
      width: 60px;
      height: 3px;
      background: linear-gradient(90deg, var(--c-teal), transparent);
      border-radius: 2px;
      margin-bottom: 1rem;
    }

    /* Navbar */
    #navbar {
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      z-index: 100;
      transition: background 0.3s, border-color 0.3s;
    }
    #navbar.scrolled {
      background: rgba(4, 9, 15, 0.92);
      border-bottom: 1px solid rgba(0,212,212,0.12);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
    }

    /* Mobile menu */
    #mobile-menu {
      display: none;
      position: fixed;
      top: 0; left: 0; right: 0; bottom: 0;
      z-index: 200;
      background: rgba(4, 9, 15, 0.98);
      backdrop-filter: blur(20px);
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 2rem;
    }
    #mobile-menu.open { display: flex; }

    /* FAQ accordion */
    .faq-item {
      border: 1px solid var(--c-border);
      border-radius: 12px;
      overflow: hidden;
      transition: border-color 0.25s;
    }
    .faq-item.open { border-color: rgba(0,212,212,0.35); }

    .faq-question {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 20px 24px;
      cursor: pointer;
      background: var(--c-card);
      transition: background 0.2s;
      gap: 12px;
    }
    .faq-question:hover { background: rgba(0,212,212,0.07); }

    .faq-answer {
      max-height: 0;
      overflow: hidden;
      transition: max-height 0.35s ease, padding 0.25s;
      padding: 0 24px;
      color: var(--c-muted);
      font-size: 0.95rem;
      line-height: 1.7;
    }
    .faq-item.open .faq-answer {
      max-height: 300px;
      padding: 0 24px 20px;
    }

    .faq-icon {
      width: 28px;
      height: 28px;
      border-radius: 50%;
      border: 1.5px solid rgba(0,212,212,0.3);
      display: flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
      color: var(--c-teal);
      font-size: 18px;
      transition: transform 0.3s, background 0.2s;
    }
    .faq-item.open .faq-icon {
      transform: rotate(45deg);
      background: rgba(0,212,212,0.12);
    }

    /* Scroll fade animations */
    .fade-in {
      opacity: 0;
      transform: translateY(24px);
      transition: opacity 0.6s ease, transform 0.6s ease;
    }
    .fade-in.visible { opacity: 1; transform: translateY(0); }
    .fade-delay-1 { transition-delay: 0.1s; }
    .fade-delay-2 { transition-delay: 0.2s; }
    .fade-delay-3 { transition-delay: 0.3s; }
    .fade-delay-4 { transition-delay: 0.4s; }
    .fade-delay-5 { transition-delay: 0.5s; }

    /* Step number circle */
    .step-num {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: linear-gradient(135deg, rgba(0,212,212,0.2), rgba(0,212,212,0.05));
      border: 1.5px solid rgba(0,212,212,0.35);
      display: flex;
      align-items: center;
      justify-content: center;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 0.9rem;
      color: var(--c-teal);
      flex-shrink: 0;
    }

    /* Icon box */
    .icon-box {
      width: 48px;
      height: 48px;
      border-radius: 12px;
      background: rgba(0,212,212,0.1);
      border: 1px solid rgba(0,212,212,0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 22px;
      color: var(--c-teal);
      flex-shrink: 0;
    }

    /* Scrollbar */
    ::-webkit-scrollbar { width: 6px; }
    ::-webkit-scrollbar-track { background: var(--c-bg); }
    ::-webkit-scrollbar-thumb { background: rgba(0,212,212,0.25); border-radius: 3px; }
    ::-webkit-scrollbar-thumb:hover { background: rgba(0,212,212,0.4); }

    @media (prefers-reduced-motion: reduce) {
      *, .fade-in { animation: none !important; transition-duration: 0.01ms !important; }
      .fade-in { opacity: 1; transform: none; }
    }
  </style>
</head>

<body>

  <!-- Background grid -->
  <div class="bg-grid" aria-hidden="true"></div>

  <!-- ═══════════════════════════ NAVIGATION ═══════════════════════════ -->
  <nav id="navbar" role="navigation" aria-label="Main navigation">
    <div class="max-w-6xl mx-auto px-5 py-4 flex items-center justify-between">

      <!-- Logo -->
      <a href="#" class="flex items-center gap-3 group" aria-label="NominalCoin Home">
        <div class="w-9 h-9 rounded-xl flex items-center justify-center font-display font-bold text-base text-[#04090F] bg-gradient-to-br from-[#00D4D4] to-[#008888] shadow-lg group-hover:scale-110 transition-transform">N</div>
        <div>
          <span class="font-display font-bold text-white tracking-tight text-base leading-none block">NominalCoin</span>
          <span class="text-[10px] text-[#6B8FA8] tracking-widest uppercase leading-none block mt-0.5">Mine · Earn · Empower</span>
        </div>
      </a>

      <!-- Desktop nav links -->
      <div class="hidden md:flex items-center gap-6">
        <a href="#about" class="text-sm text-[#6B8FA8] hover:text-[#00D4D4] transition-colors">About</a>
        <a href="#how-it-works" class="text-sm text-[#6B8FA8] hover:text-[#00D4D4] transition-colors">How It Works</a>
        <a href="#features" class="text-sm text-[#6B8FA8] hover:text-[#00D4D4] transition-colors">Features</a>
        <a href="#roadmap" class="text-sm text-[#6B8FA8] hover:text-[#00D4D4] transition-colors">Roadmap</a>
        <a href="#faq" class="text-sm text-[#6B8FA8] hover:text-[#00D4D4] transition-colors">FAQ</a>
      </div>

      <!-- Desktop CTA -->
      <div class="hidden md:flex items-center gap-3">
        <a href="https://play.google.com/store/apps/details?id=com.nominalcoin.app" target="_blank" rel="noopener" class="btn-primary text-sm py-2.5 px-5">
          <i class="ri-google-play-fill text-base"></i> Get the App
        </a>
      </div>

      <!-- Mobile menu toggle -->
      <button id="menu-toggle" class="md:hidden w-9 h-9 flex items-center justify-center rounded-lg border border-[rgba(0,212,212,0.2)] text-[#00D4D4] hover:bg-[rgba(0,212,212,0.08)] transition-colors" aria-label="Toggle menu" aria-expanded="false">
        <i class="ri-menu-line text-xl"></i>
      </button>
    </div>
  </nav>

  <!-- Mobile menu overlay -->
  <div id="mobile-menu" role="dialog" aria-label="Mobile navigation" aria-modal="true">
    <button id="menu-close" class="absolute top-5 right-5 w-10 h-10 flex items-center justify-center rounded-xl border border-[rgba(0,212,212,0.2)] text-[#00D4D4]" aria-label="Close menu">
      <i class="ri-close-line text-xl"></i>
    </button>
    <div class="flex flex-col items-center gap-6 text-center">
      <a href="#about" class="text-xl font-semibold text-white hover:text-[#00D4D4] transition-colors menu-link">About</a>
      <a href="#how-it-works" class="text-xl font-semibold text-white hover:text-[#00D4D4] transition-colors menu-link">How It Works</a>
      <a href="#features" class="text-xl font-semibold text-white hover:text-[#00D4D4] transition-colors menu-link">Features</a>
      <a href="#roadmap" class="text-xl font-semibold text-white hover:text-[#00D4D4] transition-colors menu-link">Roadmap</a>
      <a href="#faq" class="text-xl font-semibold text-white hover:text-[#00D4D4] transition-colors menu-link">FAQ</a>
      <a href="https://play.google.com/store/apps/details?id=com.nominalcoin.app" target="_blank" rel="noopener" class="btn-primary mt-2">
        <i class="ri-google-play-fill"></i> Download App
      </a>
    </div>
  </div>

  <!-- ═══════════════════════════ HERO ═══════════════════════════ -->
  <section id="hero" class="relative min-h-screen flex items-center justify-center pt-24 pb-20 overflow-hidden">
    <div class="orb orb-1 animate-float-slow" aria-hidden="true"></div>
    <div class="orb orb-2 animate-float-med" style="animation-delay:-3s;" aria-hidden="true"></div>

    <div class="relative z-10 max-w-5xl mx-auto px-5 text-center">

      <!-- Pre-headline badge -->
      <div class="flex justify-center mb-6 fade-in">
        <div class="badge">
          <i class="ri-flashlight-fill text-xs"></i>
          Mobile-First &nbsp;·&nbsp; Fair &nbsp;·&nbsp; Transparent
        </div>
      </div>

      <!-- Headline -->
      <h1 class="font-display font-extrabold text-5xl md:text-7xl leading-tight mb-6 fade-in fade-delay-1">
        The <span class="grad-text">Digital Economy</span>
        <br class="hidden md:block" />
        Built for <span class="teal-glow">Everyone.</span>
      </h1>

      <!-- Subtitle -->
      <p class="text-[#6B8FA8] text-lg md:text-xl max-w-2xl mx-auto leading-relaxed mb-10 fade-in fade-delay-2">
        NominalCoin is a transparent, community-powered mobile earning platform.
        Build real digital value through consistent participation — no privilege required, no hidden rules.
      </p>

      <!-- CTAs -->
      <div class="flex flex-col sm:flex-row gap-4 justify-center mb-14 fade-in fade-delay-3">
        <a href="https://play.google.com/store/apps/details?id=com.nominalcoin.app" target="_blank" rel="noopener" class="btn-primary text-base py-4 px-8">
          <i class="ri-google-play-fill text-lg"></i> Download on Google Play
        </a>
        <a href="#about" class="btn-outline text-base py-4 px-8">
          <i class="ri-information-line"></i> Learn More
        </a>
      </div>

      <!-- Trust chips -->
      <div class="flex flex-wrap gap-3 justify-center fade-in fade-delay-4">
        <div class="flex items-center gap-2 glass rounded-full px-4 py-2 text-sm">
          <i class="ri-shield-check-fill teal text-sm"></i>
          <span class="text-[#8BAFC4]">Integrity-First Design</span>
        </div>
        <div class="flex items-center gap-2 glass rounded-full px-4 py-2 text-sm">
          <i class="ri-group-fill teal text-sm"></i>
          <span class="text-[#8BAFC4]">Community-Powered</span>
        </div>
        <div class="flex items-center gap-2 glass rounded-full px-4 py-2 text-sm">
          <i class="ri-bar-chart-fill teal text-sm"></i>
          <span class="text-[#8BAFC4]">Clear Progress Mechanics</span>
        </div>
        <div class="flex items-center gap-2 glass rounded-full px-4 py-2 text-sm">
          <i class="ri-smartphone-fill teal text-sm"></i>
          <span class="text-[#8BAFC4]">Available on Android</span>
        </div>
      </div>
    </div>

    <!-- Scroll hint -->
    <div class="absolute bottom-8 left-1/2 -translate-x-1/2 flex flex-col items-center gap-2 opacity-40 animate-bounce" aria-hidden="true">
      <i class="ri-arrow-down-line text-[#00D4D4] text-xl"></i>
    </div>
  </section>

  <!-- ═══════════════════════════ ABOUT ═══════════════════════════ -->
  <section id="about" class="relative py-24 overflow-hidden">
    <div class="orb orb-3" style="opacity:0.5;" aria-hidden="true"></div>

    <div class="relative z-10 max-w-6xl mx-auto px-5">
      <div class="grid md:grid-cols-2 gap-16 items-center">

        <!-- Left: Text -->
        <div class="fade-in">
          <div class="section-line"></div>
          <p class="badge mb-4">What is NominalCoin?</p>
          <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-6 leading-tight">
            Earn value through<br /><span class="grad-text">consistent participation.</span>
          </h2>
          <p class="text-[#6B8FA8] leading-relaxed mb-6">
            NominalCoin is a mobile earning platform that rewards you for your daily engagement and community participation. It is not about privilege, large investments, or technical complexity — it is about <strong class="text-white">fairness</strong>.
          </p>
          <p class="text-[#6B8FA8] leading-relaxed mb-8">
            We built NominalCoin because the digital economy should work for ordinary people. Our system is transparent, the rules are clear, and every participant competes on equal ground.
          </p>

          <!-- Mini-facts grid -->
          <div class="grid grid-cols-2 gap-4">
            <div class="glass rounded-2xl p-4">
              <div class="icon-box mb-3"><i class="ri-smartphone-line"></i></div>
              <div class="font-semibold text-white text-sm mb-1">Mobile-First</div>
              <div class="text-[#6B8FA8] text-xs leading-relaxed">Designed for your phone. No expensive hardware needed.</div>
            </div>
            <div class="glass rounded-2xl p-4">
              <div class="icon-box mb-3"><i class="ri-eye-line"></i></div>
              <div class="font-semibold text-white text-sm mb-1">Full Transparency</div>
              <div class="text-[#6B8FA8] text-xs leading-relaxed">All mechanics are visible. No hidden rules, no surprises.</div>
            </div>
            <div class="glass rounded-2xl p-4">
              <div class="icon-box mb-3"><i class="ri-scales-line"></i></div>
              <div class="font-semibold text-white text-sm mb-1">Equal Opportunity</div>
              <div class="text-[#6B8FA8] text-xs leading-relaxed">Fair system — early or late, every participant earns honestly.</div>
            </div>
            <div class="glass rounded-2xl p-4">
              <div class="icon-box mb-3"><i class="ri-shield-user-line"></i></div>
              <div class="font-semibold text-white text-sm mb-1">Anti-Abuse Design</div>
              <div class="text-[#6B8FA8] text-xs leading-relaxed">Built from day one to protect the integrity of the ecosystem.</div>
            </div>
          </div>
        </div>

        <!-- Right: Card -->
        <div class="fade-in fade-delay-2">
          <div class="glass rounded-3xl p-8 relative overflow-hidden">
            <div class="absolute top-0 right-0 w-32 h-32 bg-[rgba(0,212,212,0.08)] rounded-full blur-3xl" aria-hidden="true"></div>

            <div class="relative z-10">
              <div class="flex items-center gap-3 mb-6">
                <div class="w-10 h-10 rounded-xl bg-gradient-to-br from-[#00D4D4] to-[#008888] flex items-center justify-center font-display font-bold text-[#04090F]">N</div>
                <div>
                  <div class="font-display font-bold text-white">NominalCoin</div>
                  <div class="text-[10px] text-[#6B8FA8] uppercase tracking-widest">Mine · Earn · Empower</div>
                </div>
              </div>

              <div class="space-y-4">
                <div class="flex items-start gap-3">
                  <i class="ri-check-line teal mt-0.5 flex-shrink-0"></i>
                  <p class="text-[#8BAFC4] text-sm leading-relaxed">Earn digital tokens daily through simple, consistent participation in the app.</p>
                </div>
                <div class="flex items-start gap-3">
                  <i class="ri-check-line teal mt-0.5 flex-shrink-0"></i>
                  <p class="text-[#8BAFC4] text-sm leading-relaxed">Track your progress with a clear dashboard — milestones, levels, and growth stats.</p>
                </div>
                <div class="flex items-start gap-3">
                  <i class="ri-check-line teal mt-0.5 flex-shrink-0"></i>
                  <p class="text-[#8BAFC4] text-sm leading-relaxed">Grow with a community that builds the platform's value together, not against each other.</p>
                </div>
                <div class="flex items-start gap-3">
                  <i class="ri-check-line teal mt-0.5 flex-shrink-0"></i>
                  <p class="text-[#8BAFC4] text-sm leading-relaxed">Follow an honest roadmap — wallet integration, distribution events — all transparent.</p>
                </div>
              </div>

              <div class="mt-6 pt-6 border-t border-[rgba(0,212,212,0.12)]">
                <p class="text-xs text-[#4A6A80] italic">This platform does not constitute financial advice. All mechanics are transparent and community-governed.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ HOW IT WORKS ═══════════════════════════ -->
  <section id="how-it-works" class="relative py-24">
    <div class="max-w-6xl mx-auto px-5">

      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">Simple &amp; Clear</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">How NominalCoin Works</h2>
        <p class="text-[#6B8FA8] max-w-xl mx-auto text-lg">Four honest steps from download to earning. No complexity, no gatekeeping.</p>
      </div>

      <div class="grid md:grid-cols-4 gap-6">

        <div class="glass glass-hover rounded-3xl p-6 relative fade-in fade-delay-1">
          <div class="step-num mb-4">1</div>
          <div class="icon-box mb-4"><i class="ri-download-2-line"></i></div>
          <h3 class="font-display font-semibold text-white text-lg mb-2">Download the App</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Get NominalCoin from Google Play — free to install, no fees, no credit card required.</p>
          <div class="hidden md:flex absolute -right-3 top-1/2 -translate-y-1/2 z-10">
            <div class="w-6 h-6 rounded-full bg-[rgba(0,212,212,0.15)] border border-[rgba(0,212,212,0.3)] flex items-center justify-center">
              <i class="ri-arrow-right-s-line teal text-sm"></i>
            </div>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-6 relative fade-in fade-delay-2">
          <div class="step-num mb-4">2</div>
          <div class="icon-box mb-4"><i class="ri-user-add-line"></i></div>
          <h3 class="font-display font-semibold text-white text-lg mb-2">Create Your Account</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Quick and simple onboarding. Your account is secured from day one with anti-abuse protections.</p>
          <div class="hidden md:flex absolute -right-3 top-1/2 -translate-y-1/2 z-10">
            <div class="w-6 h-6 rounded-full bg-[rgba(0,212,212,0.15)] border border-[rgba(0,212,212,0.3)] flex items-center justify-center">
              <i class="ri-arrow-right-s-line teal text-sm"></i>
            </div>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-6 relative fade-in fade-delay-3">
          <div class="step-num mb-4">3</div>
          <div class="icon-box mb-4"><i class="ri-cpu-line"></i></div>
          <h3 class="font-display font-semibold text-white text-lg mb-2">Participate Daily</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Open the app, engage with the platform, and let your consistent participation generate rewards.</p>
          <div class="hidden md:flex absolute -right-3 top-1/2 -translate-y-1/2 z-10">
            <div class="w-6 h-6 rounded-full bg-[rgba(0,212,212,0.15)] border border-[rgba(0,212,212,0.3)] flex items-center justify-center">
              <i class="ri-arrow-right-s-line teal text-sm"></i>
            </div>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-6 fade-in fade-delay-4">
          <div class="step-num mb-4">4</div>
          <div class="icon-box mb-4"><i class="ri-trophy-line"></i></div>
          <h3 class="font-display font-semibold text-white text-lg mb-2">Earn &amp; Grow</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Level up, hit milestones, and grow your digital holdings as the community and ecosystem expand.</p>
        </div>
      </div>

      <!-- Info note -->
      <div class="mt-10 glass rounded-2xl p-5 flex flex-col sm:flex-row items-start sm:items-center gap-4 fade-in fade-delay-4">
        <div class="icon-box flex-shrink-0"><i class="ri-information-line"></i></div>
        <p class="text-[#6B8FA8] text-sm leading-relaxed">
          <strong class="text-white">No mining hardware required.</strong> NominalCoin uses a participation-based earning model. All reward mechanics are clearly documented within the app so you always know exactly how you earn.
        </p>
      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ FEATURES ═══════════════════════════ -->
  <section id="features" class="relative py-24 overflow-hidden">
    <div class="absolute inset-0 bg-gradient-to-b from-transparent via-[rgba(0,212,212,0.02)] to-transparent pointer-events-none" aria-hidden="true"></div>

    <div class="relative z-10 max-w-6xl mx-auto px-5">

      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">What We've Built</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">Built Around You, Not Around Hype</h2>
        <p class="text-[#6B8FA8] max-w-xl mx-auto text-lg">Every feature is designed with one goal — a fair, sustainable earning experience.</p>
      </div>

      <div class="grid md:grid-cols-3 gap-6">

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-1">
          <div class="icon-box mb-5"><i class="ri-medal-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Progression That Hooks</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Clear milestones, visible levels, and a rewarding growth loop. Every day you participate, you can see exactly how far you've come.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-2">
          <div class="icon-box mb-5"><i class="ri-shield-check-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Integrity-First Design</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Fair rules, transparent updates, and a healthy ecosystem. We prioritize long-term platform health over short-term hype.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-3">
          <div class="icon-box mb-5"><i class="ri-team-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Community Momentum</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Network strength through real collaboration. The platform grows in value as more genuine participants join and engage together.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-1">
          <div class="icon-box mb-5"><i class="ri-bar-chart-2-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Clear Stats Dashboard</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Simple, readable dashboard. No confusing charts, no information overload. Your progress is always clear at a glance.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-2">
          <div class="icon-box mb-5"><i class="ri-safe-2-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Wallet Roadmap</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">A security-first wallet integration is on our roadmap. We're building it carefully — staged testing, full transparency, user safety above all.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 fade-in fade-delay-3">
          <div class="icon-box mb-5"><i class="ri-compass-discover-line"></i></div>
          <h3 class="font-display font-semibold text-white text-xl mb-3">Regular Platform Updates</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Continuous improvements to onboarding, UI, and rewards. We listen to the community and ship updates that matter to real users.</p>
        </div>

      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ MISSION ═══════════════════════════ -->
  <section id="mission" class="relative py-24">
    <div class="max-w-6xl mx-auto px-5">

      <div class="glass rounded-4xl p-10 md:p-14 relative overflow-hidden">
        <div class="absolute top-0 left-0 right-0 h-0.5 bg-gradient-to-r from-transparent via-[#00D4D4] to-transparent" aria-hidden="true"></div>
        <div class="absolute inset-0 bg-gradient-to-br from-[rgba(0,212,212,0.04)] to-transparent pointer-events-none" aria-hidden="true"></div>

        <div class="relative z-10">
          <div class="section-line mb-4"></div>
          <p class="badge mb-6">Our Mission</p>
          <h2 class="font-display font-bold text-2xl md:text-4xl text-white mb-4 max-w-3xl leading-tight fade-in">
            "To build a fair digital earning ecosystem where anyone can create value through consistent participation — not privilege."
          </h2>
          <p class="text-[#6B8FA8] text-lg mb-10 max-w-2xl fade-in fade-delay-1">
            The digital economy has been gatekeeping too long. We're building the infrastructure that lets ordinary people participate equally.
          </p>

          <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-5">

            <div class="glass rounded-2xl p-5 fade-in fade-delay-1">
              <div class="flex items-center gap-3 mb-3">
                <div class="w-8 h-8 rounded-lg bg-[rgba(0,212,212,0.1)] flex items-center justify-center">
                  <i class="ri-scales-line teal text-sm"></i>
                </div>
                <span class="font-display font-semibold text-white">Fairness</span>
              </div>
              <p class="text-[#6B8FA8] text-xs leading-relaxed">Consistent rules and equal opportunity for every participant, regardless of when they joined.</p>
            </div>

            <div class="glass rounded-2xl p-5 fade-in fade-delay-2">
              <div class="flex items-center gap-3 mb-3">
                <div class="w-8 h-8 rounded-lg bg-[rgba(0,212,212,0.1)] flex items-center justify-center">
                  <i class="ri-eye-line teal text-sm"></i>
                </div>
                <span class="font-display font-semibold text-white">Transparency</span>
              </div>
              <p class="text-[#6B8FA8] text-xs leading-relaxed">Clear mechanics, visible milestones, honest roadmap. No smoke, no mirrors.</p>
            </div>

            <div class="glass rounded-2xl p-5 fade-in fade-delay-3">
              <div class="flex items-center gap-3 mb-3">
                <div class="w-8 h-8 rounded-lg bg-[rgba(0,212,212,0.1)] flex items-center justify-center">
                  <i class="ri-heart-line teal text-sm"></i>
                </div>
                <span class="font-display font-semibold text-white">Community-First</span>
              </div>
              <p class="text-[#6B8FA8] text-xs leading-relaxed">Real people, healthy participation loops. The community is the product, not just the audience.</p>
            </div>

            <div class="glass rounded-2xl p-5 fade-in fade-delay-4">
              <div class="flex items-center gap-3 mb-3">
                <div class="w-8 h-8 rounded-lg bg-[rgba(0,212,212,0.1)] flex items-center justify-center">
                  <i class="ri-lock-line teal text-sm"></i>
                </div>
                <span class="font-display font-semibold text-white">Safety</span>
              </div>
              <p class="text-[#6B8FA8] text-xs leading-relaxed">Anti-abuse protections and secure architecture built into the foundation from day one.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ VISION ═══════════════════════════ -->
  <section id="vision" class="relative py-24 overflow-hidden">
    <div class="absolute right-0 top-1/2 -translate-y-1/2 w-64 h-64 bg-[rgba(0,212,212,0.06)] rounded-full blur-3xl pointer-events-none" aria-hidden="true"></div>

    <div class="relative z-10 max-w-6xl mx-auto px-5">

      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">Where We're Heading</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">Our Vision for the Digital Economy</h2>
        <p class="text-[#6B8FA8] max-w-xl mx-auto text-lg">We believe the internet should work for its users, not extract from them.</p>
      </div>

      <div class="grid md:grid-cols-3 gap-6">

        <div class="glass glass-hover rounded-3xl p-8 fade-in fade-delay-1">
          <div class="w-12 h-12 rounded-2xl border border-[rgba(0,212,212,0.3)] bg-[rgba(0,212,212,0.06)] flex items-center justify-center mb-6">
            <i class="ri-user-star-line teal text-2xl"></i>
          </div>
          <h3 class="font-display font-bold text-white text-xl mb-3">From Passive to Empowered</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">The internet shouldn't only extract value from users. NominalCoin flips this — your engagement becomes visible, measurable progress that belongs to you.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-8 fade-in fade-delay-2">
          <div class="w-12 h-12 rounded-2xl border border-[rgba(0,212,212,0.3)] bg-[rgba(0,212,212,0.06)] flex items-center justify-center mb-6">
            <i class="ri-line-chart-line teal text-2xl"></i>
          </div>
          <h3 class="font-display font-bold text-white text-xl mb-3">Open, Measurable Progress</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">Every milestone is understandable. Our systems are designed to be anti-manipulation — what you see is what you get, always.</p>
        </div>

        <div class="glass glass-hover rounded-3xl p-8 fade-in fade-delay-3">
          <div class="w-12 h-12 rounded-2xl border border-[rgba(0,212,212,0.3)] bg-[rgba(0,212,212,0.06)] flex items-center justify-center mb-6">
            <i class="ri-global-line teal text-2xl"></i>
          </div>
          <h3 class="font-display font-bold text-white text-xl mb-3">A Community-Led Future</h3>
          <p class="text-[#6B8FA8] text-sm leading-relaxed">We ship continuously, listen constantly, and treat every participant as a stakeholder in what NominalCoin becomes.</p>
        </div>
      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ ROADMAP ═══════════════════════════ -->
  <section id="roadmap" class="relative py-24">
    <div class="max-w-4xl mx-auto px-5">

      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">What's Ahead</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">Product Roadmap</h2>
        <p class="text-[#6B8FA8] max-w-xl mx-auto text-lg">A transparent, honest view of where we are and where we're going.</p>
      </div>

      <div class="space-y-5">

        <!-- Stage 1 — Active -->
        <div class="glass rounded-2xl overflow-hidden fade-in fade-delay-1" style="border-color: rgba(0,212,212,0.25);">
          <div class="flex items-stretch">
            <div class="w-1.5 flex-shrink-0 rounded-l-2xl" style="background: linear-gradient(to bottom, #00D4D4, #006E6E);"></div>
            <div class="flex-1 p-6">
              <div class="flex flex-wrap items-center gap-3 mb-3">
                <div class="step-num text-sm">01</div>
                <h3 class="font-display font-semibold text-white text-lg">App Launch &amp; Core Loop</h3>
                <span class="badge text-xs" style="background:rgba(0,212,212,0.15); border-color:rgba(0,212,212,0.35);">
                  <i class="ri-checkbox-circle-fill text-xs"></i> Active
                </span>
              </div>
              <p class="text-[#6B8FA8] text-sm leading-relaxed">Continuous improvements to onboarding flow, progression mechanics, UI polish, and retention. Listening to community feedback and shipping fast.</p>
            </div>
          </div>
        </div>

        <!-- Stage 2 -->
        <div class="glass rounded-2xl overflow-hidden fade-in fade-delay-2">
          <div class="flex items-stretch">
            <div class="w-1.5 flex-shrink-0 rounded-l-2xl" style="background: linear-gradient(to bottom, #00A8A8, #004E4E);"></div>
            <div class="flex-1 p-6">
              <div class="flex flex-wrap items-center gap-3 mb-3">
                <div class="step-num text-sm">02</div>
                <h3 class="font-display font-semibold text-white text-lg">Community Growth</h3>
                <span class="badge text-xs">In Progress</span>
              </div>
              <p class="text-[#6B8FA8] text-sm leading-relaxed">Social loops, community milestones, multi-language support, and seasonal events. Building a network that grows stronger together.</p>
            </div>
          </div>
        </div>

        <!-- Stage 3 -->
        <div class="glass rounded-2xl overflow-hidden fade-in fade-delay-3">
          <div class="flex items-stretch">
            <div class="w-1.5 flex-shrink-0 rounded-l-2xl" style="background: rgba(0,212,212,0.2);"></div>
            <div class="flex-1 p-6">
              <div class="flex flex-wrap items-center gap-3 mb-3">
                <div class="step-num text-sm" style="opacity:0.6">03</div>
                <h3 class="font-display font-semibold text-white text-lg" style="opacity:0.85">Wallet Integration</h3>
                <span class="text-xs text-[#6B8FA8] glass px-2.5 py-1 rounded-full">Upcoming</span>
              </div>
              <p class="text-[#6B8FA8] text-sm leading-relaxed">Security-first wallet design with staged rollout and thorough testing. Safety is non-negotiable here — we will take the time to do it right.</p>
            </div>
          </div>
        </div>

        <!-- Stage 4 -->
        <div class="glass rounded-2xl overflow-hidden fade-in fade-delay-4">
          <div class="flex items-stretch">
            <div class="w-1.5 flex-shrink-0 rounded-l-2xl" style="background: rgba(0,212,212,0.12);"></div>
            <div class="flex-1 p-6">
              <div class="flex flex-wrap items-center gap-3 mb-3">
                <div class="step-num text-sm" style="opacity:0.5">04</div>
                <h3 class="font-display font-semibold text-white text-lg" style="opacity:0.75">Airdrops &amp; Distribution</h3>
                <span class="text-xs text-[#6B8FA8] glass px-2.5 py-1 rounded-full">Future</span>
              </div>
              <p class="text-[#6B8FA8] text-sm leading-relaxed">Transparent distribution events with fair rules and anti-abuse protections. Every participant will know the mechanics in advance, with no hidden advantages.</p>
            </div>
          </div>
        </div>

        <!-- Stage 5 -->
        <div class="glass rounded-2xl overflow-hidden fade-in fade-delay-5">
          <div class="flex items-stretch">
            <div class="w-1.5 flex-shrink-0 rounded-l-2xl" style="background: rgba(0,212,212,0.07);"></div>
            <div class="flex-1 p-6">
              <div class="flex flex-wrap items-center gap-3 mb-3">
                <div class="step-num text-sm" style="opacity:0.4">05</div>
                <h3 class="font-display font-semibold text-white text-lg" style="opacity:0.65">Desktop Expansion</h3>
                <span class="text-xs text-[#6B8FA8] glass px-2.5 py-1 rounded-full">Vision</span>
              </div>
              <p class="text-[#6B8FA8] text-sm leading-relaxed">Expanding to desktop platforms when the product is mature enough. Cross-device continuity without sacrificing the mobile-first experience.</p>
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ WHY TRUST US ═══════════════════════════ -->
  <section id="trust" class="relative py-24 overflow-hidden">
    <div class="absolute inset-0 bg-gradient-to-b from-transparent via-[rgba(0,212,212,0.025)] to-transparent pointer-events-none" aria-hidden="true"></div>

    <div class="relative z-10 max-w-6xl mx-auto px-5">
      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">Why Trust Us</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">Principles We Never Compromise On</h2>
        <p class="text-[#6B8FA8] max-w-xl mx-auto text-lg">In a space full of empty promises, our commitments are simple and verifiable.</p>
      </div>

      <div class="grid md:grid-cols-2 gap-6">

        <div class="glass glass-hover rounded-3xl p-7 flex gap-5 fade-in fade-delay-1">
          <div class="icon-box flex-shrink-0"><i class="ri-file-text-line"></i></div>
          <div>
            <h3 class="font-display font-semibold text-white text-lg mb-2">Honest Mechanics, Always</h3>
            <p class="text-[#6B8FA8] text-sm leading-relaxed">We don't use inflated statistics or misleading claims. The numbers you see in the app reflect reality — nothing more, nothing less.</p>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 flex gap-5 fade-in fade-delay-2">
          <div class="icon-box flex-shrink-0"><i class="ri-broadcast-line"></i></div>
          <div>
            <h3 class="font-display font-semibold text-white text-lg mb-2">Regular, Clear Communication</h3>
            <p class="text-[#6B8FA8] text-sm leading-relaxed">Roadmap changes, updates, and platform news are shared with the community directly. No radio silence, no surprise pivots without explanation.</p>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 flex gap-5 fade-in fade-delay-3">
          <div class="icon-box flex-shrink-0"><i class="ri-bug-line"></i></div>
          <div>
            <h3 class="font-display font-semibold text-white text-lg mb-2">Anti-Manipulation Architecture</h3>
            <p class="text-[#6B8FA8] text-sm leading-relaxed">Built-in safeguards prevent any single actor from gaming the system. The playing field stays level for every participant at all times.</p>
          </div>
        </div>

        <div class="glass glass-hover rounded-3xl p-7 flex gap-5 fade-in fade-delay-4">
          <div class="icon-box flex-shrink-0"><i class="ri-seedling-line"></i></div>
          <div>
            <h3 class="font-display font-semibold text-white text-lg mb-2">Sustainable-First Growth</h3>
            <p class="text-[#6B8FA8] text-sm leading-relaxed">We prioritize long-term ecosystem health over short-term growth metrics. A healthy platform today is worth more than hype that burns out tomorrow.</p>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ FAQ ═══════════════════════════ -->
  <section id="faq" class="relative py-24">
    <div class="max-w-3xl mx-auto px-5">

      <div class="text-center mb-16 fade-in">
        <div class="section-line mx-auto"></div>
        <p class="badge mx-auto mb-4">Answers</p>
        <h2 class="font-display font-bold text-3xl md:text-4xl text-white mb-4">Frequently Asked Questions</h2>
        <p class="text-[#6B8FA8] text-lg">Honest answers. No marketing fluff.</p>
      </div>

      <div class="space-y-3" id="faq-list">

        <div class="faq-item fade-in fade-delay-1" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">What exactly is NominalCoin?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            NominalCoin is a mobile earning platform available on Android. You participate in the platform daily, and your consistent engagement earns you digital tokens. It's built around fairness, transparent mechanics, and community growth — no expensive hardware, no large initial investment required.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-2" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">Is this financial advice or a guaranteed investment?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            No. Nothing on this website or within the app constitutes financial advice or guarantees future token value. Digital tokens carry risk, and you should never participate with funds or time you cannot afford. We are fully transparent about this.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-3" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">Where can I download the app?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            NominalCoin is currently available on Google Play. Search for "NominalCoin" or click the download buttons on this page. The app is free to install — there are no fees to get started.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-4" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">Do I need special hardware to earn?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            No. NominalCoin uses a participation-based earning model. Your smartphone is all you need. This is intentional — we believe earning digital value shouldn't require expensive equipment or technical expertise.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-5" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">How is NominalCoin different from other crypto projects?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            Our core differentiators are honesty and fairness. We don't use fake user counts or inflated statistics. We publish a real roadmap and stick to it. Every mechanic is designed to be fair — no hidden advantages for early users, no manipulation. We're building for the long term.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-1" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">When will the wallet feature be available?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            Wallet integration is on our roadmap (Stage 3). We are prioritizing security above speed — we will not rush the wallet rollout. When it's ready, the community will be given full details before launch so everyone understands exactly how it works.
          </div>
        </div>

        <div class="faq-item fade-in fade-delay-2" data-faq>
          <div class="faq-question">
            <span class="font-medium text-white text-sm">What are airdrops and when will they happen?</span>
            <div class="faq-icon"><i class="ri-add-line"></i></div>
          </div>
          <div class="faq-answer">
            Airdrop and distribution events are planned for a future stage (Stage 4 on our roadmap). All rules and eligibility criteria will be published transparently in advance. Anti-abuse protections will be in place to ensure fair distribution for all participants.
          </div>
        </div>

      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ DOWNLOAD CTA ═══════════════════════════ -->
  <section id="download" class="relative py-24 overflow-hidden">
    <div class="absolute inset-0 pointer-events-none" aria-hidden="true">
      <div class="absolute inset-0 bg-gradient-to-b from-transparent to-[rgba(0,212,212,0.04)]"></div>
      <div class="absolute left-1/2 top-1/2 -translate-x-1/2 -translate-y-1/2 w-[600px] h-[600px] bg-[rgba(0,212,212,0.07)] rounded-full blur-[100px]"></div>
    </div>

    <div class="relative z-10 max-w-3xl mx-auto px-5 text-center">
      <div class="fade-in">
        <div class="section-line mx-auto mb-4"></div>
        <p class="badge mx-auto mb-6">Join the Movement</p>
        <h2 class="font-display font-bold text-4xl md:text-5xl text-white mb-6 leading-tight">
          Ready to join the<br /><span class="grad-text">next digital economy?</span>
        </h2>
        <p class="text-[#6B8FA8] text-lg max-w-xl mx-auto mb-10 leading-relaxed">
          Download NominalCoin, participate consistently, and help build a fairer digital world — one day at a time.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center mb-8">
          <a href="https://play.google.com/store/apps/details?id=com.nominalcoin.app" target="_blank" rel="noopener" class="btn-primary text-base py-4 px-10">
            <i class="ri-google-play-fill text-xl"></i> Download on Google Play
          </a>
          <a href="#how-it-works" class="btn-outline text-base py-4 px-8">
            <i class="ri-play-circle-line"></i> How It Works
          </a>
        </div>
        <p class="text-[#4A6A80] text-sm">Free to download · Available on Android · No hidden fees</p>
      </div>
    </div>
  </section>

  <!-- ═══════════════════════════ FOOTER ═══════════════════════════ -->
  <footer class="relative pt-16 pb-10 border-t border-[rgba(0,212,212,0.1)]">
    <div class="max-w-6xl mx-auto px-5">

      <div class="grid md:grid-cols-3 gap-10 mb-12">

        <div>
          <div class="flex items-center gap-3 mb-4">
            <div class="w-9 h-9 rounded-xl flex items-center justify-center font-display font-bold text-[#04090F] bg-gradient-to-br from-[#00D4D4] to-[#008888]">N</div>
            <div>
              <span class="font-display font-bold text-white">NominalCoin</span>
              <div class="text-[10px] text-[#6B8FA8] uppercase tracking-widest">Mine · Earn · Empower</div>
            </div>
          </div>
          <p class="text-[#4A6A80] text-sm leading-relaxed max-w-xs">
            A transparent, community-powered mobile earning platform built on fairness and integrity.
          </p>
        </div>

        <div>
          <div class="font-display font-semibold text-white text-sm mb-4 uppercase tracking-widest">Navigate</div>
          <ul class="space-y-2.5">
            <li><a href="#about" class="text-[#6B8FA8] hover:text-[#00D4D4] text-sm transition-colors">About NominalCoin</a></li>
            <li><a href="#how-it-works" class="text-[#6B8FA8] hover:text-[#00D4D4] text-sm transition-colors">How It Works</a></li>
            <li><a href="#features" class="text-[#6B8FA8] hover:text-[#00D4D4] text-sm transition-colors">Features</a></li>
            <li><a href="#roadmap" class="text-[#6B8FA8] hover:text-[#00D4D4] text-sm transition-colors">Roadmap</a></li>
            <li><a href="#faq" class="text-[#6B8FA8] hover:text-[#00D4D4] text-sm transition-colors">FAQ</a></li>
          </ul>
        </div>

        <div>
          <div class="font-display font-semibold text-white text-sm mb-4 uppercase tracking-widest">Get Started</div>
          <p class="text-[#4A6A80] text-sm mb-4 leading-relaxed">Available now on Android. Free to download and start participating.</p>
          <a href="https://play.google.com/store/apps/details?id=com.nominalcoin.app" target="_blank" rel="noopener" class="btn-primary text-sm py-2.5 px-5 inline-flex">
            <i class="ri-google-play-fill"></i> Google Play
          </a>
        </div>
      </div>

      <div class="border-t border-[rgba(0,212,212,0.08)] pt-8 flex flex-col md:flex-row items-center justify-between gap-4">
        <p class="text-[#3A5A70] text-xs">&copy; <span id="year"></span> NominalCoin. All rights reserved.</p>
        <p class="text-[#3A5A70] text-xs text-center md:text-right max-w-md">
          This website does not constitute financial advice or guarantee future token value. Participate responsibly.
        </p>
      </div>
    </div>
  </footer>

  <!-- ═══════════════════════════ SCRIPTS ═══════════════════════════ -->
  <script>
    // Copyright year
    document.getElementById('year').textContent = new Date().getFullYear();

    // Navbar scroll effect
    const navbar = document.getElementById('navbar');
    window.addEventListener('scroll', () => {
      navbar.classList.toggle('scrolled', window.scrollY > 40);
    }, { passive: true });

    // Mobile menu
    const menuToggle = document.getElementById('menu-toggle');
    const menuClose  = document.getElementById('menu-close');
    const mobileMenu = document.getElementById('mobile-menu');

    function openMenu() {
      mobileMenu.classList.add('open');
      menuToggle.setAttribute('aria-expanded', 'true');
      document.body.style.overflow = 'hidden';
    }
    function closeMenu() {
      mobileMenu.classList.remove('open');
      menuToggle.setAttribute('aria-expanded', 'false');
      document.body.style.overflow = '';
    }

    menuToggle.addEventListener('click', openMenu);
    menuClose.addEventListener('click', closeMenu);
    document.querySelectorAll('.menu-link').forEach(l => l.addEventListener('click', closeMenu));
    mobileMenu.addEventListener('click', (e) => { if (e.target === mobileMenu) closeMenu(); });

    // Scroll fade-in
    const fadeEls = document.querySelectorAll('.fade-in');
    const observer = new IntersectionObserver((entries) => {
      entries.forEach(e => {
        if (e.isIntersecting) {
          e.target.classList.add('visible');
          observer.unobserve(e.target);
        }
      });
    }, { threshold: 0.12, rootMargin: '0px 0px -40px 0px' });
    fadeEls.forEach(el => observer.observe(el));

    // FAQ accordion
    document.querySelectorAll('[data-faq]').forEach(item => {
      item.querySelector('.faq-question').addEventListener('click', () => {
        const isOpen = item.classList.contains('open');
        document.querySelectorAll('[data-faq]').forEach(i => i.classList.remove('open'));
        if (!isOpen) item.classList.add('open');
      });
    });

    // Smooth scroll for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function(e) {
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
          e.preventDefault();
          const top = target.getBoundingClientRect().top + window.scrollY - 80;
          window.scrollTo({ top, behavior: 'smooth' });
        }
      });
    });
  </script>

</body>
</html>
