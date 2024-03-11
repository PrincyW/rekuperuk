import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  static values = {
    alertTitle: String,
    alertText: String,
    icon: String
  }

  connect() {
    console.log("Hello")


  }

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
