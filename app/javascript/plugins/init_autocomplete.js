import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('#drone_address, #address, #delivery_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
