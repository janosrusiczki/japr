# frozen_string_literal: true

require './spec/helper'

module JAPR
  describe Jekyll::Site do
    specify { _(Jekyll::Site.include?(JekyllSiteExtensions)).must_equal(true) }
  end
end
