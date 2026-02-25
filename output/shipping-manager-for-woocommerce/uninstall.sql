-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wcsm_parent_country', 'cities_data', 'checkout_cities_label', 'wcsm_disabled_shipping', 'wcsm_disabled_billing', 'wcsm_cities_status', 'wcsm_cities_text', 'wcsm_cities_zones', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

