# frozen_string_literal: true

module UI
  class TableHeadComponent < BaseComponent
    def self.default_class
      "h-12 px-4 text-left align-middle font-medium text-muted-foreground [&:has([role=checkbox])]:pr-0"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.th class: class_names, **opts do
        content
      end
    end
  end
end
