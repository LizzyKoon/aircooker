import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="dater"
export default class extends Controller {
  static targets = ["startDate", "endDate", "totalAmount"]
  static values = {
    price: Number
   }

  connect() {
  }

  count(){
  const counter = ((Date.parse(this.endDateTarget.value) - Date.parse(this.startDateTarget.value)) / (1000 * 60 * 60 * 24));
  const totalAmountValue = counter * this.priceValue
  this.totalAmountTarget.value = totalAmountValue
  // console.log(this.endDate);
  // console.log(this.endDateTarget.value.getTime());
  console.log(this.priceValue);
  // console.log(Date.parse(this.endDateTarget.value));
  // console.log(this.startDateValue);
  }
}
