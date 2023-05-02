npm i tailwindcss postcss autoprefixer

npx tailwindcss init -p

echo "/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './index.html',
    './src/**/*.{vue,js,ts,jsx,tsx}'
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}

" > tailwind.config.js

echo "@tailwind base;
@tailwind components;
@tailwind utilities;
" > ./src/index.css