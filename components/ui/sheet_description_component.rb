# frozen_string_literal: true

module UI
  class SheetDescriptionComponent < BaseComponent
    def self.default_class
      "text-sm text-muted-foreground"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.p class: class_names, **opts do
        content
      end
    end
  end
end
