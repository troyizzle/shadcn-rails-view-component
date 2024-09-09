# frozen_string_literal: true

module UI
  class AlertDescriptionComponent < BaseComponent
    def self.default_class
      "text-sm [&_p]:leading-relaxed"
    end

    def call
      tag.div class: class_name, **opts do
        content
      end
    end
  end
end
