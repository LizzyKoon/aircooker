import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element)
  }

  // date_counter()
  // {
  // start_date = document.getElementById("booking_start_date").value;
  // end_date = document.getElementById("booking_end_date").value;
  //   if (start_date > end_date)
  //   {
  //     alert("Erreur");
  // date_fin.innerHTML = "";
  //   }
  //   else
  //   {
  //     alert("OK");
  //   }
  // }
}
