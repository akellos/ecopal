window.addEventListener("scroll", (event) => {
  var scrollTop = $(window).scrollTop() ;
  const pal = document.querySelector(".pal-landing");

  if (scrollTop > 705) {
    pal.style.position = "absolute";
    pal.style.top = "36%";
  } else {
    pal.style.position = "fixed";
    pal.style.top = "150px";
  }

  if (scrollTop > 715) {
    const bubble = document.querySelector(".bubble");
    bubble.style.position = "absolute";
    bubble.style.top = "35%";
    bubble.classList.add("hide");
  }
});

