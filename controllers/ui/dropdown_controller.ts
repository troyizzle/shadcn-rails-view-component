import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ui--dropdown"
export default class extends Controller {
  static targets = ["trigger", "body"]

  static values = {
    state: {
      type: String,
      default: "closed"
    }
  }

  declare readonly triggerTarget: HTMLButtonElement
  declare readonly bodyTarget: HTMLDivElement
  declare stateValue: "closed" | "open"

  toggle() {
    this.stateValue = this.stateValue === "closed" ? "open" : "closed"
  }

  stateValueChanged() {
    this.bodyTarget.dataset.state = this.stateValue
  }
}
