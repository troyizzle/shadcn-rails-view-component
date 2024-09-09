# frozen_string_literal: true

module UI
  class SheetComponent < BaseComponent
    attr_reader :side, :sheet_event

    renders_one :header, SheetHeaderComponent

    def initialize(side: :right, sheet_event:, **opts)
      @side = side
      @opts = opts
      @sheet_event = sheet_event

      super(@opts)
    end

    def default_data
      { 
        controller: "ui--sheet",
        ui__sheet_target: "sheet",
        action: "#{sheet_event}@window->ui--sheet#open animationend->ui--sheet#hide" 
      }
    end

    def self.sides
      {
        top: "inset-x-0 top-0 border-b data-[ui--sheet-state-value=closed]:slide-out-to-top data-[ui--sheet-state-value=open]:slide-in-from-top",
        bottom: "inset-x-0 bottom-0 border-t data-[ui--sheet-state-value=closed]:slide-out-to-bottom data-[ui--sheet-state-value=open]:slide-in-from-bottom",
        left: "inset-y-0 left-0 h-full w-3/4 border-r data-[ui--sheet-state-value=closed]:slide-out-to-left data-[ui--sheet-state-value=open]:slide-in-from-left sm:max-w-sm",
        right: "inset-y-0 right-0 h-full w-3/4  border-l data-[ui--sheet-state-value=closed]:slide-out-to-right data-[ui--sheet-state-value=open]:slide-in-from-right sm:max-w-sm",
      }
    end

    def self.default_class
      "hidden fixed z-50 gap-4 bg-background p-6 shadow-lg transition ease-in-out data-[ui--sheet-state-value=open]:animate-in data-[ui--sheet-state-value=closed]:animate-out data-[ui--sheet-state-value=closed]:duration-300 data-[ui--sheet-state-value=open]:duration-500"
    end

    def class_names
      super(
        tw(
          self.class.sides[side],
          self.class.default_class
        )
      )
    end
  end
end
