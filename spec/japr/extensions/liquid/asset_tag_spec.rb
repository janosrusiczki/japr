# frozen_string_literal: true

require './spec/helper'

module JAPR
  describe AssetTag do
    specify do
      AssetTag.extend?(LiquidBlockExtensions::ClassMethods).must_equal(true)
    end
    specify do
      AssetTag.include?(LiquidBlockExtensions).must_equal(true)
    end
  end
end
