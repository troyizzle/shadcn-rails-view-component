# frozen_string_literal: true

module UI
  class AvatarImageComponent < BaseComponent
    attr_reader :src, :alt

    def initialize(src:, alt:, **opts)
      @src = src
      @alt = alt
      @opts = opts

      super(@opts)
    end

    def default_data
      {action: "error->ui--avatar#fallback", ui__avatar_target: "avatar"}
    end

    def self.default_class
      "aspect-square h-full w-full"
    end

    def class_names
      super(self.class.default_class)
    end
  end
end
