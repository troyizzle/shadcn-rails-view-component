# frozen_string_literal: true

module UI
  class DropdownComponent < BaseComponent
    renders_one :trigger, DropdownTriggerComponent
    renders_one :body, DropdownBodyComponent
  end
end
