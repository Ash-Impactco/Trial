# Personal Portfolio Website

A modern, responsive personal portfolio website built with HTML, CSS, and JavaScript. This portfolio showcases your professional experience, projects, certifications, and other ventures.

## Project Structure

```
portfolio/
├── index.html
├── vercel.json
├── assets/
│   ├── css/
│   │   ├── main.css
│   │   └── animations.css
│   ├── js/
│   │   └── main.js
│   ├── vendor/
│   │   ├── bootstrap/
│   │   ├── jquery/
│   │   ├── aos/
│   │   └── boxicons/
│   └── img/
│       ├── projects/
│       │   ├── geothermal.jpg
│       │   ├── coral.jpg
│       │   └── waste.jpg
│       └── ventures/
│           ├── intrusivethoughts.jpg
│           └── cloudkitchen.jpg
└── README.md
```

## Dependencies

The project uses the following third-party libraries:
- Bootstrap CSS (v5.1.3)
- jQuery (v3.6.0)
- AOS (Animate On Scroll)
- Boxicons
- Google Fonts (Open Sans, Raleway, Poppins)

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/yourusername/portfolio.git
```

2. Add your images to the respective directories:
   - Project images in `assets/img/projects/`
   - Venture images in `assets/img/ventures/`

3. Update the content in `index.html`:
   - Personal information
   - Experience details
   - Project descriptions
   - Certification information
   - Contact details

4. Customize the styling:
   - Edit `assets/css/main.css` for base styles
   - Edit `assets/css/animations.css` for animations
   - Update CSS variables in the `:root` selector for theme colors

5. Deploy to Vercel:
   - Push your changes to GitHub
   - Import your repository on Vercel
   - Your site will be automatically deployed

## Customization

### Colors
The website uses CSS variables for easy color customization. Edit these variables in `main.css`:
```css
:root {
  --primary-color: #2E8B57;
  --secondary-color: #1E4D2B;
  --accent-green: #3CB371;
  --background-light: #f8f9fa;
  --text-dark: #444444;
  --text-light: #ffffff;
}
```

### Animations
The website includes space for animations in `animations.css`. You can add:
- Scroll animations
- Hover effects
- Page transitions
- Loading animations
- Interactive elements

## Browser Support

The website is compatible with:
- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## License

This project is open source and available under the [MIT License](LICENSE).

## Features

- ⚡️ Fully Responsive
- ⚡️ Valid HTML5 & CSS3
- ⚡️ Animation-ready
- ⚡️ Easy to modify
- ⚡️ Vercel deployment ready

## Sections

- About
- Experience
- Projects
- Certifications
- Skills
- Contact

## Contributing

Feel free to submit issues and enhancement requests!

## Support

If you find this project helpful, please give it a ⭐️ on GitHub!

[![Maintenance](https://img.shields.io/badge/maintained-yes-green.svg)](https://github.com/yourusername/portfolio/commits/master)
[![Website shields.io](https://img.shields.io/badge/website-up-yellow)](https://your-portfolio.vercel.app)
[![Ask Me Anything !](https://img.shields.io/badge/ask%20me-linkedin-1abc9c.svg)](https://www.linkedin.com/in/yourusername/)
[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org) 