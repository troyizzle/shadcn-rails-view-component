import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ui--dialog"
export default class extends Controller {
  static targets = ["body", "overlay"]

  declare readonly bodyTarget: HTMLDivElement
  declare readonly overlayTarget: HTMLDivElement
  declare stateValue: string

  static values = {
    state: {
      type: String,
      default: "closed"
    }
  }

  closeByOutsideClick(event: MouseEvent) {
    if (!this.bodyTarget.contains(event.target as Node)) {
      this.close()
    }
  }

  closeByKey(event: KeyboardEvent) {
    if (event.key === "Escape") {
      this.close()
    }
  }

  stateValueChanged() {
    console.log("stat value changed", this.stateValue)
    this.overlayTarget.dataset.state = this.stateValue
    this.bodyTarget.dataset.state = this.stateValue
  }

  open() {
    this.bodyTarget.dataset.state = "open"
    this.overlayTarget.dataset.state = "open"

    this.bodyTarget.classList.remove("hidden")
    this.overlayTarget.classList.remove("hidden")
  }

  close() {
    this.stateValue = "closed"
  }

  hide() {
    if (this.stateValue === "open") return;

    this.bodyTarget.classList.add("hidden")
    this.overlayTarget.classList.add("hidden")
  }
}
