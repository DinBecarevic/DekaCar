import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cardropdown"
export default class extends Controller {
  connect() {
    console.log("stimulus Connected!!!")
  }

  initialize() {
    this.element.setAttribute("data-action", "change->cardropdown#loadMakeModels")
  }

  loadMakeModels() {
    const selectedMake = this.element.options[this.element.selectedIndex].value
    this.url = `/ads/fetch_make_models?id=${selectedMake}`
    fetch(this.url, {
      headers: {
        Accept: "text/vnd.turbo-stream.html"
      }
    })
        .then(response => response.text())
        .then(html => Turbo.renderStreamMessage(html))
  }
}
