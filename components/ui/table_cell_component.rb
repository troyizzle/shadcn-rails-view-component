# frozen_string_literal: true

module UI
  class TableCellComponent < BaseComponent
    def self.default_class
      "p-4 align-middle [&:has([role=checkbox])]:pr-0"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.td class: class_names, **opts do
        content
      end
    end
  end
end
