-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'mppc_where_hear_about_us', 'mppc_data_submited_in_sendiblue', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', '_mass_page_post_creator_welcome_screen');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_number', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_number', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_number', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_number', '_wp_page_template');

