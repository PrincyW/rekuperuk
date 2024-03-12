import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["slot"];
  connect() {
    console.log("Connected with flatpickr");

    // Initialize flatpickr with the specified configuration
    flatpickr(this.slotTarget, {
      enableTime: true,
      minTime: "09:00",
      maxTime: "17:00",
      dateFormat: "d-m-Y H:i",
    });
  }
}
