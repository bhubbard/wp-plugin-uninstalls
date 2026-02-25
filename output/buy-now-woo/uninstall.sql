-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buy_now_woo_customize', 'buy_now_woo_button_color', 'buy_now_woo_button_bgcolor', 'buy_now_woo_button_border_color', 'buy_now_woo_button_hover_color', 'buy_now_woo_button_hover_bgcolor', 'buy_now_woo_button_hover_border_color', 'buy_now_woo_button_padding', 'buy_now_woo_button_margin', 'buy_now_woo_button_width', 'buy_now_woo_button_height', 'buy_now_woo_button_additional_css', 'buy_now_woo_single_catelog_position', 'buy_now_woo_single_product_position', 'buy_now_woo_single_product_enable', 'buy_now_woo_redirect', 'buy_now_woo_single_product_button', 'buy_now_woo_single_product_remove_quantity', 'buy_now_woo_single_product_reset_cart');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'cdx-wpgs-plugin-info-%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rn_dismissed');

