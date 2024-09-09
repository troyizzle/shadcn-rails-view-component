import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="ui--avatar"
export default class extends Controller {
  static targets = ["avatar", "fallback"]

  declare readonly avatarTarget: HTMLImageElement
  declare readonly fallbackTarget: HTMLDivElement

  fallback() {
    this.avatarTarget.classList.add("hidden")
    this.fallbackTarget.classList.remove("hidden")
  }
}
