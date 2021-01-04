function cardBtn(){

  const CardButton = document.querySelectorAll(".card")

  CardButton.forEach(function(list) {
    list.addEventListener('mouseover', function(){
        list.setAttribute("style", "background-color: blanchedalmond;")
      })
  })

  CardButton.forEach(function(list) {
    list.addEventListener('mouseout', function(){
        list.removeAttribute("style", "background-color: blanchedalmond;")
      })
  })
  
}
window.addEventListener('load', cardBtn)