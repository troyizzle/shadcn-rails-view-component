# frozen_string_literal: true

module UI
  class DropdownLabelComponent < BaseComponent
    attr_reader :inset

    def initialize(inset: false, **opts)
      @inset = inset
      @opts = opts

      super(@opts)
    end
    
    def self.default_class
      "px-2 py-1.5 text-sm font-semibold"
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
