/** @type {import('tailwindcss').Config} */
export default {
  content: ['./src/**/*.{astro,html,js,jsx,md,mdx,svelte,ts,tsx,vue}'],
  theme: {
    extend: {
      colors: {
        'charcoal': '#2B2B2B',
        'dark-blue': '#3D5A6C',
        'mint': '#C8F0E5',
        'accent-yellow': '#F4B942',
      },
      fontFamily: {
        'sans': ['Inter', 'system-ui', 'sans-serif'],
        'heading': ['Poppins', 'system-ui', 'sans-serif'],
      },
    },
  },
  plugins: [],
}
