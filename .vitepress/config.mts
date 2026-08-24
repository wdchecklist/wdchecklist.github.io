import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'Checklist Achat Immobilier',
  description: 'Guide et checklist complète pour réussir son achat immobilier',
  base: '/',
  themeConfig: {
    nav: [
      { text: 'Accueil', link: '/' },
      { text: 'Guide & Checklist', link: '/guide/000_pre' }
    ],
    sidebar: [
      {
        text: 'Sommaire',
        items: [
          { text: 'Introduction & Préambule', link: '/guide/000_pre' },
          { text: '1. Avant la visite', link: '/guide/010_avant' },
          { text: '2. Pendant la visite', link: '/guide/020_avant' },
          { text: '3. Offre et achat', link: '/guide/030_achat' },
          { text: '4. Post-achat', link: '/guide/040_apres' },
          { text: 'Annexes', link: '/guide/999_post' }
        ]
      }
    ],
    socialLinks: [
      { icon: 'github', link: 'https://github.com/wdchecklist/wdchecklist.github.io' }
    ],
    search: {
      provider: 'local'
    }
  }
})
