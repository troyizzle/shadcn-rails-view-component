import { Controller } from "@hotwired/stimulus"
import { createPopper, Instance } from "@popperjs/core"

// Connects to data-controller="ui--popover"
export default class extends Controller {
  static targets = ["trigger", "body"]

  static values = {
    state: {
      type: String,
      default: "closed"
    }
  }

  declare popperInstance: Instance
  declare readonly bodyTarget: HTMLDivElement
  declare readonly triggerTarget: HTMLButtonElement
  declare stateValue: "open" | "closed"


  connect() {
    this.popperInstance = createPopper(this.triggerTarget, this.bodyTarget, {
      placement: "bottom",
      strategy: "fixed",
      modifiers: [
        {
          name: "offset",
          options: {
            offset: [0, 8],
          }
        }
      ]
    })
  }

  show() {
    this.stateValue = "open"
  }

  hide() {
    this.stateValue = "closed"
  }

  stateValueChanged() {
    this.bodyTarget.dataset.state = this.stateValue
  }

  toggle() {
    const currentState = this.bodyTarget.dataset.state;
    console.log("toggling")

    this.bodyTarget.dataset.state = currentState === "open" ? "closed" : "open"
  }
}
