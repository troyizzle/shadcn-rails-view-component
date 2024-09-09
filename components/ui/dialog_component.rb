# frozen_string_literal: true

module UI
  class DialogComponent < BaseComponent
    renders_one :body, DialogBodyComponent

    def call
      content
    end
  end
end
