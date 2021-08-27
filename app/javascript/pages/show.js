const showChatBox = () => {

  const chatButton = document.querySelector(".chatbutton");
  const chatbox = document.querySelector(".chatbox");

  if (chatButton) {
    chatButton.addEventListener("click", (event) => {
      event.preventDefault
      chatbox.classList.toggle("showchat");
      if (chatbox.classList.contains("showchat")) {
        chatButton.classList.toggle("buttonMove")
        chatButton.innerText = "X"
      }
    })
  }
}

export { showChatBox };
