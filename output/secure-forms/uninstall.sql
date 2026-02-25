-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'wpsf_validated', 'wpsf_selected_forms', 'wpsf_siteid', 'wpsf_wizard_finished', 'wpsf_last_run_time', 'wpsf_step1_finished', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter', 'baa_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpsf_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpsf_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpsf_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpsf_enabled');

