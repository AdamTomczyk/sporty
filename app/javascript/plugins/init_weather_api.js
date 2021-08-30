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
  console.log(data.main);
  const currentContainer = document.getElementById('weather-container');
  currentContainer.innerHTML = `${data.main.temp}°C`;
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
