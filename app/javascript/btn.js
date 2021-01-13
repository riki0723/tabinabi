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

function tagBtn(){

  const CardButton = document.querySelectorAll(".card_tag_list")

  CardButton.forEach(function(list) {
    list.addEventListener('mouseover', function(){
        list.setAttribute("style", "background-color: gold;")
      })
  })

  CardButton.forEach(function(list) {
    list.addEventListener('mouseout', function(){
        list.removeAttribute("style", "background-color: gold;")
      })
  })
  
}
window.addEventListener('load', tagBtn)