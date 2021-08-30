const fetchWeatherByCoordinates = (coordinates) => {
  // 3. Get the dataset from this element (.dataset)
  // 4. Get the long, and lat
  fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${coordinates.lat}&lon=${coordinates.lon}&appid=${API_KEY}`)
  .then(response => response.json())
  .then(updateCard);
};

const updateCard = (data) => {
  console.log(data);
}

const initWeatherApi = () => {
  // 1. In the view, create a div with an ID (if the div is there run the rest of the code)
  // 2. Find the element by ID and store it in a const (Js file)
  const coordinates = "where we grab it from the view with .dataset"
  if (coordinates) {
    fetchWeatherByCoordinates(coordinates.dataset)

  }



  console.log("hi from the weather API")
}
export {initWeatherApi}
