window.addEventListener('load',function(){
  
  const firstImage =document.getElementById("image-change1")
  const secondImage =document.getElementById("image-change2")
  const therdImage =document.getElementById("image-change3")

  
  var fn = function() {
    secondImage.setAttribute("style", "display:block;")
    firstImage.setAttribute("style", "display: none;");
  };
  var tm = 5000;
  setTimeout(fn,tm);

  var fn = function() {
    therdImage.setAttribute("style", "display:block;")
    secondImage.setAttribute("style", "display: none;");
  };
  var tm = 10000;
  setTimeout(fn,tm);

  var fn = function() {
    firstImage.setAttribute("style", "display:block;")
    therdImage.setAttribute("style", "display: none;");
  };
  var tm = 15000;
  setTimeout(fn,tm);


})