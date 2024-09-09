# frozen_string_literal: true

module UI
  class SheetTitleComponent < BaseComponent
    def self.default_class
      "text-lg font-semibold text-foreground"
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
