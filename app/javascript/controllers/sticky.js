const stickyElement = document.getElementById('sticky');

// Store the initial offset from the top of the document
const stickyOffset = stickyElement.offsetTop;

// Function to handle the scroll event
function handleScroll() {
  // Get the current scroll position
  const scrollPosition = window.pageYOffset || document.documentElement.scrollTop;

  // Check if the scroll position is greater than or equal to the sticky offset
  if (scrollPosition >= stickyOffset) {
    // Add a class to make the element sticky
    stickyElement.classList.add('sticky-active');
  } else {
    // Remove the sticky class if the scroll position is above the offset
    stickyElement.classList.remove('sticky-active');
  }
}
// Attach the scroll event listener
window.addEventListener('scroll', handleScroll);
