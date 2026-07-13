# Creating an Adventure Simulator with Lua

Project developed during the Bootcamp Lua Developer Training, under the guidance of specialist [Rafael Skoberg](https://github.com/rafaskb "Rafael Skoberg").
Here, we will create an adventure simulator with a complex and versatile data structure behind the scenes, focusing on object-oriented programming, third-party libraries, and type annotations in Lua.

## Features

- **Dark (default) / Light theme** with accessible toggle (moon/sun icons).
- **Multilingual** support: **EN-US** (default), **PT-BR**, **ES-ES**.
- **Responsive layout** using Flexbox; works on desktop, tablet and smartphone.
- **Accessibility**: skip link, ARIA attributes, keyboard operability, focus styles.
- **Local persistence**: theme and language saved in `localStorage`.

## Technologies Used

- **HTML** - main page (semantic markup).
- **CSS** - styles, variables for dark/light themes, responsive rules.
- **JavaScript** - theme and language logic, small demo console and interactions.

## How to run locally

1. Open `index.html` in your browser (double-click or use the browser Open File).
2. The UI works offline - no server required.

## Notes and accessibility

- The theme toggle is keyboard accessible and uses `aria-pressed`.
- The language selector updates visible strings and persists the choice.
- Focus styles are visible and meet contrast needs for keyboard users.
- The demo does not run the Lua game; it only simulates node selection for UI purposes.

## Customization

- To change the default theme, edit `localStorage` key `ad_sim_theme` or modify `script.js` default.
- To add more languages, extend the `i18n` object in `script.js` and add the option to the `<select>`.

[LICENSE](./LICENSE)

See [original repository](https://github.com/digitalinnovationone/trilha-lua/tree/main/M%C3%B3dulo%203/Simulador%20de%20Aventura).
