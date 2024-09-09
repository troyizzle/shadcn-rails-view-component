module UI
  class AvatarFallbackComponent < BaseComponent
    def self.default_class
      "flex h-full w-full items-center justify-center rounded-full bg-muted hidden"
    end

    def class_names
      super(self.class.default_class)
    end

    def default_data
      { ui__avatar_target: "fallback" }
    end

    def call
      tag.div class: class_names, **opts do
        content
      end
    end
  end
end
