-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ve_ads_page_type', 've_ads_header_val', 've_ads_home_header_val', 've_ads_sidebar_val', 've_ads_footer_val', 've_ads_home_footer_val', 've_ads_content_above_val', 've_ads_content_below_val');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ve_ads_head_banner', 've_ads_sidebar_banner', 've_ads_footer_banner', 've_ads_content_above_banner', 've_ads_content_below_banner');
DELETE FROM wp_usermeta WHERE meta_key IN ('ve_ads_head_banner', 've_ads_sidebar_banner', 've_ads_footer_banner', 've_ads_content_above_banner', 've_ads_content_below_banner');
DELETE FROM wp_termmeta WHERE meta_key IN ('ve_ads_head_banner', 've_ads_sidebar_banner', 've_ads_footer_banner', 've_ads_content_above_banner', 've_ads_content_below_banner');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ve_ads_head_banner', 've_ads_sidebar_banner', 've_ads_footer_banner', 've_ads_content_above_banner', 've_ads_content_below_banner');

