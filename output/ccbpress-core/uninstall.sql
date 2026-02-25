-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccbpress_import_in_progress', 'ccbpress_last_import', 'ccbpress_cancel_import', 'default_post_edit_rows', 'ccbpress_ccb', 'ccbpress_settings', 'ccbpress_settings_import', 'ccbpress_licenses', 'ccbpress_tools_cron', 'ccbpress_tools_cache', 'ccbpress_rate_limits', 'ccbpress_license_data', 'ccbpress_current_import', 'ccbpress_core_db_version', 'ccbpress_ccb_forms_lightbox', 'ccbpress_ccb_links_forms', 'active_sitewide_plugins', 'ccbpress-addons', 'update_plugins', 'wp_ccbpress_get_process_lock');
DELETE FROM wp_options WHERE option_name LIKE '%_active';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key_active';
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

