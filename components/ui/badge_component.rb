# frozen_string_literal: true

# px-2.5

module UI
  class BadgeComponent < BaseComponent
    attr_reader :variant

    def initialize(variant: :default, **opts)
      @variant = variant
      @opts = opts

      super(opts)
    end

    def class_names
      super(
        tw(self.class.default_class,
           self.class.variants[variant])
      )
    end

    def self.badge_variants(variant: :default, classes: '')
      tw(default_class,
         variants[variant],
         classes)
    end

    def self.default_class
      'inline-flex items-center rounded-full border px-2 py-1 text-xs font-semibold transition-colors focus:outline-none focus:ring-2 focus:ring-ring focus:ring-offset-2'
    end

    def self.variants
      {
        default: 'border-transparent bg-primary text-primary-foreground hover:bg-primary/80',
        success: 'border-transparent bg-green-500 text-primary-foreground hover:bg-green-500/80',
        secondary:
          'border-transparent bg-secondary text-secondary-foreground hover:bg-secondary/80',
        destructive:
          'border-transparent bg-destructive text-destructive-foreground hover:bg-destructive/80',
        outline: 'text-foreground'
      }
    end
  end
end
