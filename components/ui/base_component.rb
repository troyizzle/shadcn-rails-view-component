require "tailwind_merge"

module UI
  class BaseComponent < ViewComponent::Base
    attr_reader :class_name, :opts

    def initialize(opts = {})
      @opts = opts || {}

      if respond_to?(:default_data) 
        merge_data(@opts, default_data)
      end

      @class_name = opts.delete(:class)
    end

    def class_names(base_classes = "")
      tw(base_classes, class_name)
    end

    def tw(*classes)
      TailwindMerge::Merger.new.merge(classes.join(" "))
    end

    def self.tw(*classes)
      TailwindMerge::Merger.new.merge(classes.join(" "))
    end

    def merge_data(opts, data)
      if opts.nil?
        return data
      end

      opts[:data] ||= {}

      data.keys.each do |key|
        if opts.dig(:data, key)
          opts[:data][key] += " #{data[key]}"
        else
          opts[:data][key] = data[key]
        end
      end
    end
  end
end
