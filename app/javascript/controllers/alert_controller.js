import { Controller } from "@hotwired/stimulus"
import Swal from "sweetalert2"

export default class extends Controller {

  static values = {
    alertTitle: String,
    alertText: String,
    icon: String
  }

  connect() {
    console.log("Hello")
  }

  // Sweet alert for donating a wig

  initSweetalertDonation(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

    Swal.fire({
      position: "end",
      icon: "success",
      title: "Merci beaucoup pour votre don de perruque!",
      showConfirmButton: false,
      timer: 1500
    }).then((result) => {
      if (result.dismiss === Swal.DismissReason.timer) {
        event.target[event.type](); // "submit"
      }
    })
    .catch(event.preventDefault())
  }


// Sweet alert for reserving a wig

  initSweetalert(event) {
    event.preventDefault(); // Prevent the form to be submited after the submit button has been clicked

    Swal.fire({
      position: "end",
      icon: "success",
      title: "Votre commande a été prise en compte!",
      showConfirmButton: false,
      timer: 1500
    }).then((result) => {
      if (result.dismiss === Swal.DismissReason.timer) {
        event.target[event.type](); // "submit"
      }
    })
    .catch(event.preventDefault())
  }
}
