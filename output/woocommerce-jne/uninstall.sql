-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aw_shipping_wizard_completed', 'aw_shipping_wizard_hidden', 'aw_shipping_license', 'aw_shipping_settings', 'woocommerce_weight_unit', 'aw_shipping_cod_enabled', 'aw_shipping_cod_activated_at', 'aw_shipping_kyc_verified', 'aw_shipping_kyc_verified_at', 'aw_shipping_analysis_result', 'aw_shipping_analysis_timestamp', 'woocommerce_jne_shipping_license_code', 'woocommerce_shipping_method_selection_priority', 'woocommerce_jne_shipping_settings', 'woocommerce_price_num_decimals', 'woocommerce_email_footer_text', 'aw_shipping_do_activation_redirect', 'aw_shipping_db_version', 'aw_wizard_license_type', 'aw_wizard_license_error', 'aw_wizard_config_error', 'aw_wizard_courier_error', 'aw_wizard_services_error', 'aw_shipping_kyc_status', 'aw_shipping_services_domestic', 'aw_shipping_services_instant', 'aw_shipping_services_international', 'aw_shipping_couriers_domestic', 'aw_shipping_couriers_instant', 'aw_shipping_couriers_international');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_settings_backup';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'aw_pending_log_%';
DELETE FROM wp_options WHERE option_name LIKE 'aw_pickup_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'aw_bulk_awb_orders_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_weight');
DELETE FROM wp_usermeta WHERE meta_key IN ('_weight');
DELETE FROM wp_termmeta WHERE meta_key IN ('_weight');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_weight');

