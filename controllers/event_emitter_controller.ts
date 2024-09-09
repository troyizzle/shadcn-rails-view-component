import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-emitter"
export default class extends Controller {
  static values = {
    eventName: {
      type: String
    },
    detail: {
      type: Object
    }
  }

  declare readonly eventNameValue: string
  declare readonly detailValue: Object

  dispatchEvent() {
    const event = new CustomEvent(this.eventNameValue, {
      detail: this.detailValue,
      bubbles: true
    })

    this.element.dispatchEvent(event)
  }
}
