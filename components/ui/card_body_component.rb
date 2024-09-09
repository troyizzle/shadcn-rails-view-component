# frozen_string_literal: true

module UI
  class CardBodyComponent < BaseComponent
    def self.default_class
      "p-6 pt-0"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.div class: class_names, **opts do
        content
      end
    end
  end
end
