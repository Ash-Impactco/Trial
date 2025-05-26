// Test script for portfolio functionality
document.addEventListener('DOMContentLoaded', () => {
    console.log('Running portfolio tests...');

    // Test 1: Welcome Screen
    const welcomeScreen = document.getElementById('introWelcome');
    console.assert(welcomeScreen !== null, 'Welcome screen should exist');
    console.assert(welcomeScreen.style.display !== 'none', 'Welcome screen should be visible initially');

    // Test 2: Navigation Links
    const navLinks = document.querySelectorAll('.nav-links a');
    console.assert(navLinks.length > 0, 'Navigation links should exist');
    navLinks.forEach(link => {
        console.assert(link.getAttribute('href').startsWith('#'), 'Navigation links should be hash links');
    });

    // Test 3: Category Buttons
    const categoryButtons = document.querySelectorAll('.category-button');
    console.assert(categoryButtons.length === 2, 'Should have two category buttons');
    categoryButtons.forEach(button => {
        console.assert(button.onclick !== null, 'Category buttons should have click handlers');
    });

    // Test 4: Sections
    const sections = document.querySelectorAll('.section');
    console.assert(sections.length > 0, 'Sections should exist');
    sections.forEach(section => {
        console.assert(section.id, 'Each section should have an ID');
    });

    // Test 5: Experience Items
    const experienceItems = document.querySelectorAll('.experience-timeline > div');
    console.assert(experienceItems.length > 0, 'Experience items should exist');

    // Test 6: Assets
    const images = document.querySelectorAll('img');
    images.forEach(img => {
        console.assert(img.complete, `Image ${img.src} should load properly`);
    });

    // Test 7: Animations
    console.assert(typeof AOS !== 'undefined', 'AOS should be initialized');

    // Test 8: Responsive Design
    const viewport = document.querySelector('meta[name="viewport"]');
    console.assert(viewport !== null, 'Viewport meta tag should exist');

    // Test 9: External Resources
    const externalResources = [
        'https://cdn.tailwindcss.com',
        'https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css',
        'https://code.jquery.com/jquery-3.6.0.min.js',
        'https://unpkg.com/aos@2.3.1/dist/aos.css',
        'https://unpkg.com/aos@2.3.1/dist/aos.js'
    ];

    // Log test results
    console.log('All tests completed!');
}); 