import consumer from "./consumer";

const initChatroomCable = () => {
  const messagesContainer = document.getElementById('messages');
  console.log(messagesContainer)
  if (messagesContainer) {
    const id = messagesContainer.dataset.eventId;
    const currentUserId = messagesContainer.dataset.currentUserId;

    consumer.subscriptions.create({ channel: "ChatroomChannel", id: id }, {
      received(data) {
        let message = document.createElement('div')
        message.innerHTML = data.partial;
        message = message.firstElementChild;
        if (parseInt(currentUserId, 10) === parseInt(data.author_id, 10)) {
          message.classList.remove('message-author-current-user');
          message.classList.add('message-author-current-user');
        } else {
          message.classList.remove('message-author-current-user');
          message.classList.add('message-author-other-user');
        }
        if (!document.getElementById(message.id)) {
          document.querySelector("#new_message").insertAdjacentElement("beforebegin", message);
        }
      },
    });
  }
}

export { initChatroomCable };
