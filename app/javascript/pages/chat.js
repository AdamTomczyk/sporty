
const showChatBox = () => {

  const chatButton = document.querySelector(".chatbtn");
  if (chatButton) {
  const chatbox = document.querySelector(".chatbox");
  const accordion = document.querySelector(".accordion")
  const leavebutton = document.querySelector(".leavebutton")

    chatButton.addEventListener("click", (event) => {
      // event.preventDefault
      chatbox.classList.add("showchat");
      accordion.classList.add("hide")
    })

  leavebutton.addEventListener("click", () => {
    chatbox.classList.remove("showchat");
    accordion.classList.remove("hide");
  })
}

}

export { showChatBox };
