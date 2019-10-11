# frozen_string_literal: true

require './spec/helper'

module JAPR
  describe CssAssetTag do
    specify { _(CssAssetTag.tag_name).must_equal('css_asset_tag') }
    specify { _(CssAssetTag.output_type).must_equal('.css') }
    specify { _(CssAssetTag.superclass == JAPR::AssetTag).must_equal(true) }

    it 'registers tag with Liquid' do
      _(
        ::Liquid::Template.tags[JAPR::CssAssetTag.tag_name]
      ).must_equal(JAPR::CssAssetTag)
    end
  end
end
