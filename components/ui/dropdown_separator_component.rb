# frozen_string_literal: true

module UI
  class DropdownSeparatorComponent < BaseComponent
    def self.default_class
      "-mx-1 my-1 h-px bg-muted"
    end

    def class_names
      super(self.class.default_class)
    end

    def call
      tag.div class: class_names, **opts
    end
  end
end
