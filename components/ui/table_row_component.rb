# frozen_string_literal: true

module UI
  class TableRowComponent < BaseComponent
    renders_one :cell, TableCellComponent
    renders_one :head, TableHeadComponent

    def self.default_class
      "border-b transition-colors hover:bg-muted/50 data-[state=selected]:bg-muted"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.tr class: class_names, **opts do
        content
      end
    end
  end
end
