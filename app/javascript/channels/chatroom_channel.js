import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log(messagesContainer)
  if (messagesContainer) {
    const id = messagesContainer.dataset.eventId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        document.querySelector("#new_message").insertAdjacentHTML("beforebegin", data)
        console.log(messagesContainer)
        console.log(data, "here there should be data")
      },
    });
  }
}

export { initChatroomCable };
