-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_currency_pos', 'woocommerce_weight_unit', 'woocommerce_checkout_page_id', 'woocommerce_dhlpwc_settings', 'woocommerce_dhlpwc_switch_loading', 'woocommerce_pr_dhl_dp_settings');
DELETE FROM wp_options WHERE option_name LIKE 'dhlpwc_bulk_download_%';
DELETE FROM wp_options WHERE option_name LIKE 'dhlpwc_connector_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'dhlpwc_debug_mail_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'dhlpwc_postcode_validation_%';
DELETE FROM wp_options WHERE option_name LIKE 'dhlpwc_postcode_validation%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dhlpwc_send_with_bp', 'dhlpwc_send_with_bp_count', 'dhlpwc_send_with_bp_mix', 'dhlpwc_enable_method_limit', 'dhlpwc_selected_method_limit', 'dhlpwc_additional_shipping_fee');
DELETE FROM wp_usermeta WHERE meta_key IN ('dhlpwc_send_with_bp', 'dhlpwc_send_with_bp_count', 'dhlpwc_send_with_bp_mix', 'dhlpwc_enable_method_limit', 'dhlpwc_selected_method_limit', 'dhlpwc_additional_shipping_fee');
DELETE FROM wp_termmeta WHERE meta_key IN ('dhlpwc_send_with_bp', 'dhlpwc_send_with_bp_count', 'dhlpwc_send_with_bp_mix', 'dhlpwc_enable_method_limit', 'dhlpwc_selected_method_limit', 'dhlpwc_additional_shipping_fee');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dhlpwc_send_with_bp', 'dhlpwc_send_with_bp_count', 'dhlpwc_send_with_bp_mix', 'dhlpwc_enable_method_limit', 'dhlpwc_selected_method_limit', 'dhlpwc_additional_shipping_fee');

