-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('printus_config_settings', 'printus_detached_settings', 'printus_installed_at_version', 'printus_first_install_date', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'active_sitewide_plugins', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('printus_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('printus_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('printus_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('printus_dismissed_notices');

