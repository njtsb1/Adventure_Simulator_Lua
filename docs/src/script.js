(() => {
  const LS_THEME = "ad_sim_theme";
  const LS_LANG = "ad_sim_lang";

  const root = document.documentElement;
  const themeToggle = document.getElementById("theme-toggle");
  const langSelect = document.getElementById("lang-select");
  const consoleEl = document.getElementById("console");
  const yearEl = document.getElementById("year");
  const titleEl = document.getElementById("app-title");
  const subtitleEl = document.getElementById("app-subtitle");
  const heroTitle = document.getElementById("hero-title");
  const heroDesc = document.getElementById("hero-desc");
  const footerText = document.getElementById("footer-text");

  // Translations
  const i18n = {
    "en-US": {
      title: "Adventure Simulator",
      subtitle: "A tiny UI demo for the Adventure Simulator project",
      welcome: "Welcome",
      desc: "A small demo interface for the Adventure Simulator project.",
      consoleStart: "Interface ready. Choose a path to begin.",
      play: "Play",
      inspect: "Inspect",
      trail: "Trail",
      footer: "© {year} Adventure Simulator - Demo"
    },
    "pt-BR": {
      title: "Simulador de Aventuras",
      subtitle: "Uma pequena interface de demonstração do projeto",
      welcome: "Bem-vindo",
      desc: "Uma interface de demonstração para o projeto Simulador de Aventuras.",
      consoleStart: "Interface pronta. Escolha um caminho para começar.",
      play: "Jogar",
      inspect: "Inspecionar",
      trail: "Trilha",
      footer: "© {year} Simulador de Aventuras - Demo"
    },
    "es-ES": {
      title: "Simulador de Aventuras",
      subtitle: "Una pequeña interfaz de demostración del proyecto",
      welcome: "Bienvenido",
      desc: "Una interfaz de demostración para el proyecto Simulador de Aventuras.",
      consoleStart: "Interfaz lista. Elige un camino para comenzar.",
      play: "Jugar",
      inspect: "Inspeccionar",
      trail: "Sendero",
      footer: "© {year} Simulador de Aventuras - Demo"
    }
  };

  // Utilities
  function log(msg) {
    const p = document.createElement("div");
    p.textContent = msg;
    consoleEl.appendChild(p);
    consoleEl.scrollTop = consoleEl.scrollHeight;
  }

  function applyTranslations(lang) {
    const t = i18n[lang] || i18n["en-US"];
    document.documentElement.lang = lang;
    titleEl.textContent = t.title;
    subtitleEl.textContent = t.subtitle;
    heroTitle.textContent = t.welcome;
    heroDesc.textContent = t.desc;
    footerText.textContent = t.footer.replace("{year}", new Date().getFullYear());

    // Update action buttons text
    document.querySelectorAll(".card-actions .btn").forEach(btn => {
      const action = btn.getAttribute("data-action");
      if (action === "play") btn.textContent = t.play;
      else if (action === "inspect") btn.textContent = t.inspect;
      else if (action === "trail") btn.textContent = t.trail || t.inspect;
    });
  }

  // Theme handling: default dark
  function setTheme(theme) {
    if (theme === "light") {
      root.classList.add("light");
      themeToggle.setAttribute("aria-pressed", "false");
    } else {
      root.classList.remove("light");
      themeToggle.setAttribute("aria-pressed", "true");
    }
    localStorage.setItem(LS_THEME, theme);
  }

  // Language handling
  function setLang(lang) {
    langSelect.value = lang;
    localStorage.setItem(LS_LANG, lang);
    applyTranslations(lang);
    log(i18n[lang].consoleStart);
  }

  // Init
  (function init() {
    yearEl.textContent = new Date().getFullYear();

    const savedTheme = localStorage.getItem(LS_THEME) || "dark";
    setTheme(savedTheme);

    const savedLang = localStorage.getItem(LS_LANG) || "en-US";
    setLang(savedLang);

    // Theme toggle
    themeToggle.addEventListener("click", () => {
      const current = root.classList.contains("light") ? "light" : "dark";
      setTheme(current === "light" ? "dark" : "light");
    });

    // Keyboard accessible toggle (Enter/Space)
    themeToggle.addEventListener("keydown", (ev) => {
      if (ev.key === " " || ev.key === "Enter") {
        ev.preventDefault();
        themeToggle.click();
      }
    });

    // Language select
    langSelect.addEventListener("change", (e) => {
      setLang(e.target.value);
    });

    // Card buttons
    document.querySelectorAll(".card-actions .btn").forEach(btn => {
      btn.addEventListener("click", (e) => {
        const path = btn.getAttribute("data-path");
        if (path) {
          log(`[action] Selected path: ${path}`);
          // Simulate a small "navigation" for demo
          setTimeout(() => {
            log(`[game] Loading node ${path} ... (demo)`);
          }, 300);
        }
      });
    });

    // Make cards focusable and actionable via Enter
    document.querySelectorAll(".card").forEach(card => {
      card.addEventListener("keydown", (ev) => {
        if (ev.key === "Enter") {
          const primary = card.querySelector(".btn.primary");
          if (primary) primary.click();
        }
      });
    });
  })();
})();