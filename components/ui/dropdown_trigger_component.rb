# frozen_string_literal: true

module UI
  class DropdownTriggerComponent < BaseComponent
    attr_reader :text

    def initialize(text: nil)
      @text = text
    end

    def call
      if text
        render UI::ButtonComponent.new data: { action: "click->ui--popover#toggle" } do
          text
        end
      else
        content
      end
    end
  end
end
