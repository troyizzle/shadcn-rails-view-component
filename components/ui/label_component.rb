# frozen_string_literal: true

module UI
  class LabelComponent < BaseComponent
    def self.default_class
      "text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.label class: class_names, **opts
    end
  end
end
