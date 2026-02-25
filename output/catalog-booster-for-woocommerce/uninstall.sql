-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ic_woocat', 'IC_WOOCAT_activation_message_done', 'ic_cat_recommended_extensions', 'ic_hidden_notices', 'implecode_wp_tooltips', 'implecode_wp_hidden_tooltips', 'IC_EPC_activation_message', 'IC_EPC_activation_message_done', 'ic_cat_wizard_woo_choice', 'ic_enable_page_for_woo', 'ic_enable_listing_for_woo', 'product_archive_page_id', 'product_archive', 'woocommerce_shop_page_id', 'ic_woocat_woo_gallery', 'implecode_extensions_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ic_woocat_url', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ic_woocat_url', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ic_woocat_url', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ic_woocat_url', 'thumbnail_id');

