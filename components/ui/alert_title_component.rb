# frozen_string_literal: true

module UI
  class AlertTitleComponent < BaseComponent
    def self.default_class
      "mb-1 font-medium leading-none tracking-tight"
    end

    def call
      tag.h5 class: class_names, **opts do
        content
      end
    end
  end
end
