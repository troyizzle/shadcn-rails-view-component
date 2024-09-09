# frozen_string_literal: true

module UI
  class TableComponent < BaseComponent
    renders_one :header, TableHeaderComponent
    renders_one :body, TableBodyComponent

    def self.default_class
      "w-full caption-bottom text-sm"
    end

    def class_names
      super(self.class.default_class)
    end
  end
end
