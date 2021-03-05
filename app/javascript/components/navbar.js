const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('background-black');
      } else {
        navbar.classList.remove('background-black');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
