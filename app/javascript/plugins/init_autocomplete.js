import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('#drone_address, #address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
