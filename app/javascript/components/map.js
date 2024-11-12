import React, { useEffect, useState } from 'react';
import mapboxgl from 'mapbox-gl';

mapboxgl.accessToken = 'YOUR_MAPBOX_ACCESS_TOKEN';

const Map = () => {
  const [vehicles, setVehicles] = useState([]);

  useEffect(() => {
    fetch('/vehicles/show')
      .then(response => response.json())
      .then(data => setVehicles(data.vehicles));
  }, []);

  useEffect(() => {
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11',
      center: [-74.5, 40], // Configura una ubicación inicial
      zoom: 9
    });

    vehicles.forEach(vehicle => {
      const { last_waypoint } = vehicle;
      if (last_waypoint) {
        new mapboxgl.Marker()
          .setLngLat([last_waypoint.longitude, last_waypoint.latitude])
          .setPopup(new mapboxgl.Popup().setText(`Vehicle: ${vehicle.identifier}`))
          .addTo(map);
      }
    });

    return () => map.remove();
  }, [vehicles]);

  return <div id="map" style={{ width: '100%', height: '500px' }}></div>;
};

export default Map;
