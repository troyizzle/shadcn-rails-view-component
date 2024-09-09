# frozen_string_literal: true

module UI
  class TableBodyComponent < BaseComponent
    renders_one :row, TableRowComponent

    def self.default_class
      "[&_tr:last-child]:border-0"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.tbody class: class_names, **opts do
        content
      end
    end
  end
end
