# frozen_string_literal: true

module UI
  class DropdownBodyComponent < BaseComponent
    attr_reader :side 

    renders_one :item, DropdownItemComponent
    renders_one :label, DropdownLabelComponent
    renders_one :separator, DropdownSeparatorComponent

    def initialize(side: :top, **opts)
      @side = side
      @opts = opts

      super(@opts)
    end

    def default_data
      { side: side, state: "closed", ui__popover_target: "body" }
    end

    def self.default_class
      "z-50 min-w-[8rem] overflow-hidden rounded-md border bg-popover p-1 text-popover-foreground shadow-md data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[side=bottom]:slide-in-from-top-2 data-[side=left]:slide-in-from-right-2 data-[side=right]:slide-in-from-left-2 data-[side=top]:slide-in-from-bottom-2 data-[state=closed]:hidden"
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
