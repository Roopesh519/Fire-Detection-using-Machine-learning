import React, { useEffect } from 'react';

const LocationSender = () => {
  useEffect(() => {
    if ("geolocation" in navigator) {
      navigator.geolocation.getCurrentPosition(function(position) {
        const latitude = position.coords.latitude;
        const longitude = position.coords.longitude;
        const locationURL = `https://www.google.com/maps?q=${latitude},${longitude}`;
        
        sendLocation(locationURL);
      });
    } else {
      alert("Geolocation is not supported by this browser.");
    }
  }, []);

  const sendLocation = (locationURL) => {
    fetch('/send-location', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ location: locationURL }),
    });
  };

  return null; // No UI is needed for this component
};

export default LocationSender;
