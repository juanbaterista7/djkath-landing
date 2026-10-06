/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['./*.html'],
    theme: {
        extend: {
            colors: {
                amber: '#D4A843',
                warm: '#F97316',
                ink: '#0F0F0F',
            },
            fontFamily: {
                display: ['Bebas Neue', 'system-ui', 'sans-serif'],
                body: ['Antonio', 'system-ui', 'sans-serif'],
            }
        }
    }
}
