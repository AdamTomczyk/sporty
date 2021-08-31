
const showChatBox = () => {

  const chatButton = document.querySelector(".chatbtn");
  const chatbox = document.querySelector(".chatbox");

    chatButton.addEventListener("click", (event) => {
      // event.preventDefault
      chatbox.classList.toggle("showchat");
    })

}

export { showChatBox };
