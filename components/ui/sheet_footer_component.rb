# frozen_string_literal: true

module UI
  class SheetFooterComponent < BaseComponent
    def self.default_class
      "flex flex-col-reverse sm:flex-row sm:justify-end sm:space-x-2"
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
