-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_version', 'sr_network_activate', 'sr_is_auto_refresh', 'sr_what_to_refresh', 'sr_refresh_duration', 'sr_data_sync', 'sr_old_data_sync', 'sr_abandoned_cutoff_time', 'sr_abandoned_cutoff_period', 'sr_number_format', 'woocommerce_price_num_decimals', 'sr_dismiss_admin_notice', 'currency_type', 'sr_admin_footer', '_sr_activation_redirect', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_check_update';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key';
DELETE FROM wp_options WHERE option_name LIKE '%_download_url';
DELETE FROM wp_options WHERE option_name LIKE '%_live_version';
DELETE FROM wp_options WHERE option_name LIKE '%_installed_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

