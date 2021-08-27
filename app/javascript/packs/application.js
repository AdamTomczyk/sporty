// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// Images Import


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import "animate.css"



// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initChatroomCable } from '../channels/chatroom_channel';
import { initMapbox } from '../plugins/init_mapbox';
import { canvas } from '../pages/home';

const showChatBox = () => {

  const chatButton = document.querySelector(".chatbutton");
  const chatbox = document.querySelector(".chatbox");


  console.log(chatButton)
  chatButton.addEventListener("click", (event) => {
    event.preventDefault
    chatbox.classList.toggle("showchat");
    if (chatbox.classList.contains("showchat")){
      chatButton.classList.toggle("buttonMove")
      chatButton.innerText = "X"
    }
  })



}


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initChatroomCable();
  canvas()
  showChatBox()

});
