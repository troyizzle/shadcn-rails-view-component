# frozen_string_literal: true

module UI
  class CardTitleComponent < BaseComponent
    def self.default_class
      "text-2xl font-semibold leading-none tracking-tight"
    end
    
    def class_names
      super(self.class.default_class)
    end

    def call
      tag.h3 class: class_names, **opts do
        content
      end
    end
  end
end
