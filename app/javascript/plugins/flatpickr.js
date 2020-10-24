import flatpickr from "flatpickr";

export const initFlatpickr = () => {
  const dateForm = document.querySelector("#date-form")
  if(dateForm) {
    flatpickr(dateForm, {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
    });
  }

}
