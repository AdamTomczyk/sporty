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

import { showChatBox } from '../pages/chat'
import { hideReview } from '../pages/hide_review'
import { initWeatherApi } from '../plugins/init_weather_api';
import {showAccordion} from '../pages/eventshow'
import {flashAlert} from '../pages/dashboard'
// All animations will take half the time to accomplish
document.documentElement.style.setProperty('--animate-delay', '.5s');

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  initMapbox();
  initChatroomCable();
  canvas();
  showChatBox();
  showAccordion();
  initWeatherApi();
  hideReview();
  flashAlert();
});
