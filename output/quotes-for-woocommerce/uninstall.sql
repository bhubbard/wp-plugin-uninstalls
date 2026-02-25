-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quotes_for_wc', 'qwc_menu_notice', 'qwc_add_to_cart_button_text', 'qwc_enable_global_quote', 'qwc_enable_global_prices', 'qwc_proceed_checkout_btn_label', 'qwc_cart_page_name', 'qwc_checkout_page_name', 'qwc_hide_address_fields', 'woocommerce_quotes-gateway_settings', 'qwc_place_order_text', 'qwc_allow_tracking', 'woocommerce_store_city', 'woocommerce_default_country', 'active_sitewide_plugins', 'qwc_tracker_last_send');
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracker_last_send';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('qwc_display_prices', 'qwc_enable_quotes');
DELETE FROM wp_usermeta WHERE meta_key IN ('qwc_display_prices', 'qwc_enable_quotes');
DELETE FROM wp_termmeta WHERE meta_key IN ('qwc_display_prices', 'qwc_enable_quotes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('qwc_display_prices', 'qwc_enable_quotes');

