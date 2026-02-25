-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_ship_to_destination');
DELETE FROM wp_options WHERE option_name LIKE '%_credentials_validated';
DELETE FROM wp_options WHERE option_name LIKE '%_removed';
DELETE FROM wp_options WHERE option_name LIKE '%_config_urls_exists';
DELETE FROM wp_options WHERE option_name LIKE '%_vip_username';
DELETE FROM wp_options WHERE option_name LIKE '%_vip_password';
DELETE FROM wp_options WHERE option_name LIKE '%_test_mode';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_install_timestamp';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_id';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_installation_created';
DELETE FROM wp_options WHERE option_name LIKE '%_installation_updated';
DELETE FROM wp_options WHERE option_name LIKE '%_process_admin_options';
DELETE FROM wp_options WHERE option_name LIKE '%_australian_timezones';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_install_config';
DELETE FROM wp_options WHERE option_name LIKE '%_tenant_uid';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_access_token';
DELETE FROM wp_options WHERE option_name LIKE '%_processing';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_shipping_options';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_shipping_options';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_shipping_options';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_shipping_options';

