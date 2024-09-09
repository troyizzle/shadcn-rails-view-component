# frozen_string_literal: true

module UI
  class SheetHeaderComponent < BaseComponent
    renders_one :title, SheetTitleComponent
    renders_one :description, SheetDescriptionComponent

    def self.default_class
      "flex flex-col space-y-2 text-center sm:text-left"
    end

    def classs_names
      super(self.class.default_class)
    end

    def call
      tag.div class: class_names, **opts do
        content
      end
    end
  end
end
