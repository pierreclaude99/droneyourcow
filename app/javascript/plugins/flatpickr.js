import flatpickr from "flatpickr";

export const initFlatpickr = () => {
  const dateForm = document.querySelector("#date-form")
  if(dateForm) {
    flatpickr(dateForm, {
    enableTime: true,
    dateFormat: "d-m-y H:i",

    });
  }

}
