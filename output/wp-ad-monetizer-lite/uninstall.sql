-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'geoLoc-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('spec-ads-post-type', 'spec-ads-page-type', 'spec-ads-cat-type', 'spec-ads-countries', 'spec-ads-countries-list', 'spec-ad-slides', 'slider_no_of_ads', 'slider_autoplay', 'slider_autoplay_after', 'slider_stop_on_hover', 'slider_pagination', 'slider_transition', 'spec_ads_views', 'mlx_ad_w', 'mlx_ad_h', 'mlx_ad_anchor_target', 'mlx_ad_type', 'mlx_ad_anchor_link', 'mlx_ad_img_url', 'mlx_ad_content', 'mlx_ad_block', 'spec_ads_clicks', 'mlx_shortcode_box');
DELETE FROM wp_usermeta WHERE meta_key IN ('spec-ads-post-type', 'spec-ads-page-type', 'spec-ads-cat-type', 'spec-ads-countries', 'spec-ads-countries-list', 'spec-ad-slides', 'slider_no_of_ads', 'slider_autoplay', 'slider_autoplay_after', 'slider_stop_on_hover', 'slider_pagination', 'slider_transition', 'spec_ads_views', 'mlx_ad_w', 'mlx_ad_h', 'mlx_ad_anchor_target', 'mlx_ad_type', 'mlx_ad_anchor_link', 'mlx_ad_img_url', 'mlx_ad_content', 'mlx_ad_block', 'spec_ads_clicks', 'mlx_shortcode_box');
DELETE FROM wp_termmeta WHERE meta_key IN ('spec-ads-post-type', 'spec-ads-page-type', 'spec-ads-cat-type', 'spec-ads-countries', 'spec-ads-countries-list', 'spec-ad-slides', 'slider_no_of_ads', 'slider_autoplay', 'slider_autoplay_after', 'slider_stop_on_hover', 'slider_pagination', 'slider_transition', 'spec_ads_views', 'mlx_ad_w', 'mlx_ad_h', 'mlx_ad_anchor_target', 'mlx_ad_type', 'mlx_ad_anchor_link', 'mlx_ad_img_url', 'mlx_ad_content', 'mlx_ad_block', 'spec_ads_clicks', 'mlx_shortcode_box');
DELETE FROM wp_commentmeta WHERE meta_key IN ('spec-ads-post-type', 'spec-ads-page-type', 'spec-ads-cat-type', 'spec-ads-countries', 'spec-ads-countries-list', 'spec-ad-slides', 'slider_no_of_ads', 'slider_autoplay', 'slider_autoplay_after', 'slider_stop_on_hover', 'slider_pagination', 'slider_transition', 'spec_ads_views', 'mlx_ad_w', 'mlx_ad_h', 'mlx_ad_anchor_target', 'mlx_ad_type', 'mlx_ad_anchor_link', 'mlx_ad_img_url', 'mlx_ad_content', 'mlx_ad_block', 'spec_ads_clicks', 'mlx_shortcode_box');

