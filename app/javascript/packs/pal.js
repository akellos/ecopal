window.addEventListener("scroll", (event) => {
  var scrollTop = $(window).scrollTop() ;
  if (scrollTop > 705) {
    const pal = document.querySelector(".pal-landing");
    pal.style.position = "absolute";
    pal.style.top = "36%";
  }
  if (scrollTop > 715) {
    const bubble = document.querySelector(".bubble");
    bubble.style.position = "absolute";
    bubble.style.top = "38%";
    bubble.classList.add("hide");
  }
});
