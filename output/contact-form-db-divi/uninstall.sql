-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lwp_cfdb_plugin_version', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'lwp_cfdb_activation_time', 'lwp_cfdb_spare_me', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('additional_details', 'processed_fields_values', 'lwp_cfdb_read_status', 'lwp_cfdb_read_date', 'lwp_cfdb_contact_form_unique_id', 'lwp_cfdb_page_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('additional_details', 'processed_fields_values', 'lwp_cfdb_read_status', 'lwp_cfdb_read_date', 'lwp_cfdb_contact_form_unique_id', 'lwp_cfdb_page_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('additional_details', 'processed_fields_values', 'lwp_cfdb_read_status', 'lwp_cfdb_read_date', 'lwp_cfdb_contact_form_unique_id', 'lwp_cfdb_page_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('additional_details', 'processed_fields_values', 'lwp_cfdb_read_status', 'lwp_cfdb_read_date', 'lwp_cfdb_contact_form_unique_id', 'lwp_cfdb_page_id');

