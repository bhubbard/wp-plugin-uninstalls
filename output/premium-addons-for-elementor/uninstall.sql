-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pa_complete_wizard', 'pa_saved_features', 'pa_save_settings', 'pa_maps_save_settings', 'pa_global_btn_value', 'pa_unused_widget_dialog', 'pa_install_time', 'elementor_use_mini_cart_template', 'pa_site_custom_cursor', 'pa_review_notice', 'bf25-last-not', 'papro_license_key', 'elementor_controls_usage', 'active_sitewide_plugins', '_pa_plugin_pointer_priority', 'pa_wht_lbl_save_settings', 'yith_wcwl_product_added_text', 'woocommerce_calc_taxes', 'woocommerce_hide_out_of_stock_items', 'pa_mc_layout', 'pinterest_token', 'pinterest_refresh_token', 'pa_license_info', 'pa_news', 'pa_activation_redirect', 'update_plugins', 'pa_product_added_to_cart', 'pa_cm25_pointer_dismiss', 'pa_val26_pointer_dismiss');
DELETE FROM wp_options WHERE option_name LIKE 'premium_countdown_evergreen_%';
DELETE FROM wp_options WHERE option_name LIKE 'pa_countdown_target%';
DELETE FROM wp_options WHERE option_name LIKE '%_old';
DELETE FROM wp_options WHERE option_name LIKE 'pa_stories_%';
DELETE FROM wp_options WHERE option_name LIKE 'premium_vimeo_%';
DELETE FROM wp_options WHERE option_name LIKE 'pa_tiktok_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pa_megamenu_item_meta', 'pa_mega_content_temp', '_elementor_template_type', '_hash', '_stock_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('pa_megamenu_item_meta', 'pa_mega_content_temp', '_elementor_template_type', '_hash', '_stock_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('pa_megamenu_item_meta', 'pa_mega_content_temp', '_elementor_template_type', '_hash', '_stock_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pa_megamenu_item_meta', 'pa_mega_content_temp', '_elementor_template_type', '_hash', '_stock_status', '_wp_attachment_image_alt', 'thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

