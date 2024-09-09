# frozen_string_literal: true

module UI
  class AvatarComponent < BaseComponent
    renders_one :image, AvatarImageComponent
    renders_one :fallback, AvatarFallbackComponent

    def initialize(**opts)
      @opts = opts

      super(@opts)
    end

    def class_names
      super(self.class.default_class)
    end

    def default_data
      { controller: "ui--avatar" }
    end

    def self.default_class
      "relative flex h-10 w-10 shrink-0 overflow-hidden rounded-full"
    end
  end
end
