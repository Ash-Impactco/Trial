// Initialize AOS
AOS.init({
    duration: 1000,
    once: true
});

// Modal functionality
function createModal(content) {
    const modal = document.createElement('div');
    modal.className = 'modal';
    modal.innerHTML = `
        <div class="modal-content">
            <span class="modal-close">&times;</span>
            ${content}
        </div>
    `;
    document.body.appendChild(modal);

    // Show modal
    setTimeout(() => {
        modal.style.display = 'block';
    }, 10);

    // Close modal when clicking close button
    const closeBtn = modal.querySelector('.modal-close');
    closeBtn.onclick = () => {
        modal.style.display = 'none';
        setTimeout(() => {
            modal.remove();
        }, 300);
    };

    // Close modal when clicking outside
    modal.onclick = (e) => {
        if (e.target === modal) {
            modal.style.display = 'none';
            setTimeout(() => {
                modal.remove();
            }, 300);
        }
    };
}

// Make sections expandable
document.querySelectorAll('.expandable-section').forEach(section => {
    section.addEventListener('click', () => {
        const content = section.innerHTML;
        createModal(content);
    });
});

// Make experience items expandable
document.querySelectorAll('.experience-item').forEach(item => {
    item.addEventListener('click', () => {
        const content = item.innerHTML;
        createModal(content);
    });
});

// Make education cards expandable
document.querySelectorAll('.education-card').forEach(card => {
    card.addEventListener('click', () => {
        const content = card.innerHTML;
        createModal(content);
    });
});

// Make skill cards expandable
document.querySelectorAll('.skill-card').forEach(card => {
    card.addEventListener('click', () => {
        const content = card.innerHTML;
        createModal(content);
    });
});

// Back to top button
const backToTop = document.querySelector('.back-to-top');
window.addEventListener('scroll', () => {
    if (window.pageYOffset > 100) {
        backToTop.classList.add('active');
    } else {
        backToTop.classList.remove('active');
    }
});

// Smooth scrolling for navigation links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function (e) {
        e.preventDefault();
        const target = document.querySelector(this.getAttribute('href'));
        if (target) {
            target.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }
    });
});

// Mobile navigation
const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links');

hamburger.addEventListener('click', () => {
    navLinks.classList.toggle('active');
    hamburger.classList.toggle('active');
});

// Close mobile menu when clicking outside
document.addEventListener('click', (e) => {
    if (!hamburger.contains(e.target) && !navLinks.contains(e.target)) {
        navLinks.classList.remove('active');
        hamburger.classList.remove('active');
    }
});

// Update active navigation link on scroll
const sections = document.querySelectorAll('section');
const navItems = document.querySelectorAll('.nav-links a');

window.addEventListener('scroll', () => {
    let current = '';
    sections.forEach(section => {
        const sectionTop = section.offsetTop;
        const sectionHeight = section.clientHeight;
        if (pageYOffset >= sectionTop - 200) {
            current = section.getAttribute('id');
        }
    });

    navItems.forEach(item => {
        item.classList.remove('active');
        if (item.getAttribute('href').slice(1) === current) {
            item.classList.add('active');
        }
    });
}); 