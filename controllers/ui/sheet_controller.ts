import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ui--sheet"
export default class extends Controller {
  static values = {
    state: {
      type: String,
      default: "closed"
    }
  }

  static targets = ["closeButton"]

  declare stateValue: string
  declare closeButtonTarget: HTMLDivElement
  // @ts-ignore
  declare readonly element: HTMLDivElement

  open(_event: CustomEvent) {
    this.stateValue = "open"
    this.element.classList.remove("hidden")
  }

  close(_event: CustomEvent) {
    this.stateValue = "closed"
  }

  stateValueChanged() {
    console.log("sheet state changed", this.stateValue)
    this.closeButtonTarget.dataset.state = this.stateValue
  }

  hide() {
    if (this.stateValue === "open") return;

    this.element.classList.add("hidden")
  }
}
