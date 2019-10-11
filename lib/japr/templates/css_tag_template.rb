# frozen_string_literal: true

module JAPR
  # Default output for CSS assets
  class CssTagTemplate < JAPR::Template
    def self.filetype
      '.css'
    end

    def self.priority
      -1
    end

    def html
      "<link href='#{output_path}/#{@filename}' " \
        "rel='stylesheet' type='text/css' />"
    end
  end
end
