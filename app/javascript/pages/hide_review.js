const hideReview = () => {
  const reviewButtons = document.querySelectorAll(".review-button");
  if (reviewButtons) {
    reviewButtons.forEach((button) => {
      button.addEventListener("click", () => {
        reviewSubmit(button.dataset.index);
      });
    });
  }

  const reviewSubmit = (index) => {
    const submitButton = document.querySelector(".submit-review-btn");
    const reviewToHide = document.querySelector(`.review-${index}`)
    if (submitButton) {
      console.log("Submit")
      submitButton.addEventListener("click", () => {
        reviewToHide.style = "display: none;"

      })

    }

  }
};

export { hideReview }
