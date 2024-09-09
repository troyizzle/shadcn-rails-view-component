# frozen_string_literal: true

module UI
  class CardHeaderComponent < BaseComponent
    renders_one :title, CardTitleComponent
    renders_one :description, CardDescriptionComponent

    def self.default_class
      "flex flex-col space-y-1.5 p-6"
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
