# frozen_string_literal: true

module UI
  class CardComponent < BaseComponent
    renders_one :header, CardHeaderComponent
    renders_one :body, CardBodyComponent
    renders_one :footer, CardFooterComponent

    def self.default_class
      "rounded-lg border bg-card text-card-foreground shadow-sm"
    end

    def class_names
      super(self.class.default_class)
    end
  end
end
