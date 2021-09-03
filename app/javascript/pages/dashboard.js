const flashAlert = () => {
  const buttons = document.querySelectorAll('.review-person-button')
  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener('click', () => {
        const participant = button.dataset.name
        let html = `<div class="alert alert-success alert-dismissible fade show m-1" role="alert" style="z-index: 10000000;">
                        Congrats, you reviewed ${participant}!
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                      </div>`
        document.querySelector('.flash').innerHTML = html
        const buttonParentForm = button.parentElement
        buttonParentForm.style = 'display: none;'
        button.classList.remove('submit-review-btn')
        const buttonsLeft =
          buttonParentForm.parentElement.querySelectorAll('.submit-review-btn')
        if (buttonsLeft.length == 0) {
          console.log('FORMS DONE!')
          setTimeout(() => {
            html = `<div class="alert alert-success alert-dismissible fade show" role="alert" style="z-index: 10000000;">
                        <p>Thank you for reviewing</p>
                        <p>all guests of the event! 🙌🎉</p>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                      </div>`
            document.querySelector('.flash').innerHTML = html
          }, 1000)
          document.elementFromPoint(0, 100).click()
        }

        // if (button.parentElement.querySelector('input').length == 0){
        //   html = `<h3>Thanks for reviewing everyone!</h3>`
        //   document.querySelector('.flash').innerHTML = html
        // }
      })
    })
  }
}

export { flashAlert }
