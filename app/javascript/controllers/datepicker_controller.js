import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = ["startTime", "endTime"]
  connect() {
    flatpickr(this.element, {
      altInput: true
    });
    // flatpickr(this.startTimeTarget, {
    //   enableTime: true,
    //   // Provide an id for the plugin to work
    //   plugins: [new rangePlugin({ input: "#end_time"})]})
    //   flatpickr(this.endTimeTarget, {})
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
