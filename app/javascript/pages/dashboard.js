const flashAlert = () => {
  const buttons = document.querySelectorAll('.review-person-button')
  if(buttons){
    buttons.forEach(button => {
      button.addEventListener('click', () => {
        console.log(buttons.length)
        const participant = button.dataset.name
        let html = `<div class="alert alert-warning alert-dismissible fade show m-1" role="alert" style="z-index: 10000000;">
                        Congrats, you reviewed ${participant} !
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                      </div>`
        document.querySelector('.flash').innerHTML = html
        button.parentElement.style = "display: none;";
        // if (button.parentElement.querySelector('input').length == 0){
        //   html = `<h3>Thanks for reviewing everyone!</h3>`
        //   document.querySelector('.flash').innerHTML = html
        // }
      })
    })
  }
}

export {flashAlert}
