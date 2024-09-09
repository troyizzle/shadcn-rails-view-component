# frozen_string_literal: true

module UI
  class TableFooterComponent < BaseComponent
    def self.default_class
      "border-t bg-muted/50 font-medium [&>tr]:last:border-b-0"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.tfoot class: class_names, **opts do
        content
      end
    end
  end
end
