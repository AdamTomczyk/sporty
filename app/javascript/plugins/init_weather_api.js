const API_KEY = 'b1499eceaf693f04277314e33e1907d6'

const coordinates = document.getElementById('weather')

const fetchWeatherByCoordinates = (coordinates) => {
  // 3. Get the dataset from this element (.dataset)
  // 4. Get the long, and lat
  fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${coordinates.lat}&lon=${coordinates.lon}&units=metric&appid=${API_KEY}`)
  .then(response => response.json())
  .then(updateCard);
};

const updateCard = (data) => {

  function upcase(string) {


    if (string.indexOf(' ') >= 0) {

      const strToArray = string.split("")

      let firstTarget = 0;
      let secondTarget = 0;

      for (let i = 0; i < string.length; i++) {
        if (string[i] === " ") {
          console.log("This is a call from the for loop", i)
          secondTarget = i;
        } else {

        }
      }

      strToArray[firstTarget] = strToArray[firstTarget].toUpperCase();
      strToArray[secondTarget + 1] = strToArray[secondTarget + 1].toUpperCase();

      return strToArray.join("")
    }
    else {
      return string[0].toUpperCase() + string.substring(1)
    }
  }


  console.log(data.weather[0].description);
  const currentContainer = document.getElementById('weather-container');
  currentContainer.innerHTML = `${data.main.temp.toFixed(1)}°, ${upcase(data.weather[0].description)} `;

}

const initWeatherApi = () => {
  // 1. In the view, create a div with an ID (if the div is there, run the rest of the code)
  // 2. Find the element by ID and store it in a const (Js file)
  const coordinates = document.getElementById('weather')
  if (coordinates) {
    fetchWeatherByCoordinates(coordinates.dataset)
  }
}

export { initWeatherApi }
