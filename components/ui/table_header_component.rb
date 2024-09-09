# frozen_string_literal: true

module UI
  class TableHeaderComponent < BaseComponent
    renders_one :row, TableRowComponent

    def self.default_class
      "[&_tr]:border-b"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.thead class: class_names, **opts do
        content
      end
    end
  end
end
