-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpsm_type_of_website', 'wpsm_site_url', 'wpsm_site_username', 'wpsm_site_ap', 'wpsm_site_interval', 'wpsm_site_id', 'wpsm_license_key', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'latest_wp_version', 'health-check-site-status-result');

