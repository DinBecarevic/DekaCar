import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cardropdownnew"
export default class extends Controller {
  connect() {
    console.log("stimulus cardropdownnew Connected!!!")
  }

  initialize() {
    this.element.setAttribute("data-action", "change->cardropdownnew#loadMakeModels")
  }

  loadMakeModels() {
    const selectedMake = this.element.options[this.element.selectedIndex].value
    console.log(selectedMake)
    this.url = `/ads/fetch_make_models_new?id=${selectedMake}`
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
        .then(response => response.text())
        .then(html => Turbo.renderStreamMessage(html))
  }
}
