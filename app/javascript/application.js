// Entry point for the build script in your package.json
import React from 'react';
import ReactDOM from 'react-dom';
import App from './components/App'; // Esta línea importa el componente principal que crearemos en el siguiente paso

document.addEventListener('DOMContentLoaded', () => {
  const container = document.getElementById('map-container');
  if (container) {
    ReactDOM.render(<App />, container);
  }
});
