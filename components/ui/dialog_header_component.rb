# frozen_string_literal: true

module UI
  class DialogHeaderComponent < BaseComponent
    renders_one :title, DialogTitleComponent
    renders_one :description, DialogDescriptionComponent

    def self.default_class
      "flex flex-col space-y-1.5 text-center sm:text-left"
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
