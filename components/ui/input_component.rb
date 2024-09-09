# frozen_string_literal: true

module UI
  class InputComponent < BaseComponent
    attr_reader :type

    def initialize(type:, **opts)
      @type = type
      @opts = opts

      super(@opts)
    end

    def self.default_class
      "flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.input type: type, class: class_names, **opts
    end
  end
end
