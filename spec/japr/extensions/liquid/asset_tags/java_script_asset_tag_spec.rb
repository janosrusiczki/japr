require './spec/helper'

module JAPR
  describe JavaScriptAssetTag do
    specify do
      JavaScriptAssetTag.tag_name.must_equal('javascript_asset_tag')
      JavaScriptAssetTag.output_type.must_equal('.js')
      (JavaScriptAssetTag.superclass == JAPR::AssetTag).must_equal(true)
    end

    it 'registers tag with Liquid' do
      ::Liquid::Template.tags[JAPR::JavaScriptAssetTag.tag_name]
                        .must_equal(JAPR::JavaScriptAssetTag)
    end
  end
end
