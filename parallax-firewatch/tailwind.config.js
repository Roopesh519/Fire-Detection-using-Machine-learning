/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ['./src/**/*.{js,jsx,ts,tsx}'],
  theme: {
    backgroundPosition: {
      bc : 'bottom center',

    },
    extend: {
      backgroundImage: {
        bg: 'url("/src/assests/background.png")',
        j1: 'url("/src/assests/jungle1.png")',
        j2: 'url("/src/assests/jungle2.png")',
        j3: 'url("/src/assests/jungle3.png")',
        j4: 'url("/src/assests/jungle4.png")',
        j5: 'url("/src/assests/jungle5.png")',
        logo: 'url("/src/assests/logo_land.png")',
        man: 'url("/src/assests/man_on_mountain.png")',
        mount: 'url("/src/assests/mountains.png")',
      },
    },
  },
  plugins: [],
}
