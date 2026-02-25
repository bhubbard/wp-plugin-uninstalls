-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_destination', 'woocommerce_enable_order_comments', 'wc_settings_tab_btn_text_color', 'wc_settings_tab_btn_border_color', 'wc_settings_tab_btn_bg_color', 'wc_settings_enable_btn', 'wc_settings_tab_button_text', 'ogpc_proceed_order', 'wc_gift_proceed_installed', 'wc_gift_proceed_version');

