# frozen_string_literal: true

require './spec/helper'

module JAPR
  describe JavaScriptAssetTag do
    specify do
      _(JavaScriptAssetTag.tag_name).must_equal('javascript_asset_tag')
      _(JavaScriptAssetTag.output_type).must_equal('.js')
      _(JavaScriptAssetTag.superclass == JAPR::AssetTag).must_equal(true)
    end

    it 'registers tag with Liquid' do
      _(
        ::Liquid::Template.tags[JAPR::JavaScriptAssetTag.tag_name]
      ).must_equal(JAPR::JavaScriptAssetTag)
    end
  end
end
