var wrap = $("#wrap");

wrap.on("scroll", function(e) {
    
  if (this.scrollTop > 75) {
    wrap.addClass("fixed-title");
  } else {
    wrap.removeClass("fixed-title");
  }
  
});