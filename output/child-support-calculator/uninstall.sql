-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsc_table_html', 'wpcsc__state', 'wpcsc_install_date', 'wpcsc_delete_data', 'wpcsc__settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'wpcsc__pdf', 'wpcsc__form', 'wpcsc__form-nc', 'wpcsc__email', 'wpcsc__admin_email', 'wpcsc_table_data', 'wpcsc__misc', 'wpcsc_db_version', 'wpcsc_settings', 'wpcsc_activated', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsc__%';

