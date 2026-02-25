-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'wltspab_settings_enable_hide_add_to_cart', 'wltspab_settings_enable_hide_price', 'wltspab_settings_alternative_to_add_to_cart_color', 'wltspab_settings_alternative_to_add_to_cart', 'wltspab_settings_alternative_to_price_color', 'wltspab_settings_alternative_to_price', 'wltspab_settings_custom_login_link_text', 'wltspab_settings_custom_login_link_url');

