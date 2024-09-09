# frozen_string_literal: true

module UI
  class DialogBodyComponent < BaseComponent
    attr_reader :render_close_button

    renders_one :header, DialogHeaderComponent
    renders_one :footer, DialogFooterComponent

    def initialize(render_close_button: true, **opts)
      @render_close_button = render_close_button
      @opts = opts

      super(@opts)
    end

    def default_data
      { state: :open, ui__dialog_target: "body" }
    end

    def render_close_button?
      render_close_button
    end

    def self.default_class
      "fixed left-[50%] top-[50%] z-50 grid w-full max-w-lg translate-x-[-50%] translate-y-[-50%] gap-4 border bg-background p-6 shadow-lg duration-200 data-[state=open]:animate-in data-[state=closed]:animate-out data-[state=closed]:fade-out-0 data-[state=open]:fade-in-0 data-[state=closed]:zoom-out-95 data-[state=open]:zoom-in-95 data-[state=closed]:slide-out-to-left-1/2 data-[state=closed]:slide-out-to-top-[48%] data-[state=open]:slide-in-from-left-1/2 data-[state=open]:slide-in-from-top-[48%] sm:rounded-lg"
    end

    def class_names
      super(self.class.default_class)
    end
  end
end
