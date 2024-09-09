# frozen_string_literal: true

module UI
  class AlertComponent < BaseComponent
    attr_reader :variant

    renders_one :title, UI::AlertTitleComponent
    renders_one :description, UI::AlertDescriptionComponent

    def initialize(variant: :default, **opts)
      @variant = variant
      @opts = opts

      super(@opts)
    end

    def self.default_class
      "relative w-full rounded-lg border p-4 [&>svg~*]:pl-7 [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg]:text-foreground"
    end

    def self.variants
      {
        default: "bg-background text-foreground",
        destructive: "border-destructive/50 text-destructive dark:border-destructive [&>svg]:text-destructive",
      }
    end
    
    def class_names
      super(
        tw(
          self.class.variants[variant],
          self.class.default_class
        )
      )
    end

    def call
      tag.div role="alert", class: class_names, **opts do
        content
      end
    end
  end
end
