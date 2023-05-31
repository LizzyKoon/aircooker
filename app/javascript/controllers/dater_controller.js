import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="dater"
export default class extends Controller {
  static targets = ["startDate", "endDate", "totalAmount"]
  static values = {
    price: Integer
  }

  connect() {
  }

  count(){
  const counter = (this.endDateValue - this.startDateValue);
  this.totalAmountValue = counter * priceValue
  console.log(this.endDateValue);
  console.log(this.startDateValue);
  }
}
