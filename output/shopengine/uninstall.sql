-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shopengine_direct_checkout_migration', 'shopengine_module_strings', 'elementor_css_print_method', '__shopengine_preview_product_id', 'woocommerce_enable_checkout_login_reminder', 'woocommerce_hide_out_of_stock_items', 'shopengine_db_settings', '__shopengine_oppai__', '__shopengine_license_key__', 'active_sitewide_plugins', 'woocommerce_enable_guest_checkout', 'woocommerce_shop_page_id', 'woocommerce_catalog_columns', 'woocommerce_enable_shipping_calc', 'woocommerce_tax_total_display', 'woocommerce_enable_order_comments', 'woocommerce_ship_to_destination', 'shopengine_product_id', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE 'shopengine-edit_with_emailkit_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE 'shopengine-metform_get_free_templates_banner_dismissed_%';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', 'language_code', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'gutenova_css', 'shopengine_template__post_meta__type', 'shopengine_color', '_wp_attachment_image_alt', 'shopengine_tag_bg_color', '_sale_price_dates_to', '_wt_gc_gift_card_product', '_sale_price_dates_from', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', 'language_code', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'gutenova_css', 'shopengine_template__post_meta__type', 'shopengine_color', '_wp_attachment_image_alt', 'shopengine_tag_bg_color', '_sale_price_dates_to', '_wt_gc_gift_card_product', '_sale_price_dates_from', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', 'language_code', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'gutenova_css', 'shopengine_template__post_meta__type', 'shopengine_color', '_wp_attachment_image_alt', 'shopengine_tag_bg_color', '_sale_price_dates_to', '_wt_gc_gift_card_product', '_sale_price_dates_from', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', 'language_code', '_wp_page_template', '_elementor_edit_mode', '_elementor_version', 'gutenova_css', 'shopengine_template__post_meta__type', 'shopengine_color', '_wp_attachment_image_alt', 'shopengine_tag_bg_color', '_sale_price_dates_to', '_wt_gc_gift_card_product', '_sale_price_dates_from', 'thumbnail_id', 'devmonsta_bajaar_tag_bg_color');

