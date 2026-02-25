-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_wptabs_review_notice_dismiss', 'sp_products_tabs_advanced', 'wp_tabs_version', 'wp_tabs_first_version', 'wp_tabs_activation_date', 'wp_tabs_db_version', 'sp-tab__settings', 'smart_tabs_wc_notice_dismiss_status', 'sptabs_product_tabs_settings', 'shapedplugin_offer_banner_dismissed_black_friday_2025', 'shapedplugin_offer_banner_dismissed_new_year_2026', 'sptabs_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'sp_tab_page_id%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_tab_source_options', 'sp_tab_shortcode_options', 'sptpro_woo_product_tabs_settings', 'show_product_tabs', '_tab_was_just_published', '_wc_default_tab_slug', 'sp_override_tab_enabled', '_et_pb_use_builder', 'et_pb_use_builder', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_tab_source_options', 'sp_tab_shortcode_options', 'sptpro_woo_product_tabs_settings', 'show_product_tabs', '_tab_was_just_published', '_wc_default_tab_slug', 'sp_override_tab_enabled', '_et_pb_use_builder', 'et_pb_use_builder', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_tab_source_options', 'sp_tab_shortcode_options', 'sptpro_woo_product_tabs_settings', 'show_product_tabs', '_tab_was_just_published', '_wc_default_tab_slug', 'sp_override_tab_enabled', '_et_pb_use_builder', 'et_pb_use_builder', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_tab_source_options', 'sp_tab_shortcode_options', 'sptpro_woo_product_tabs_settings', 'show_product_tabs', '_tab_was_just_published', '_wc_default_tab_slug', 'sp_override_tab_enabled', '_et_pb_use_builder', 'et_pb_use_builder', '_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wptabspro_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wptabspro_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wptabspro_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wptabspro_errors_%';

