-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_about_page_was_read', 'giveasap_active_integrations', 'sg_giveaway_slug', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'giveasap_settings', 'giveasap_version', 'giveasap_convertkit_custom_fields', 'sg_facebook', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'giveaway_leaderboard_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_user_import_page', 'giveasap_schedule', 'giveasap_prize', 'end_time', 'sg_extra_actions_max_instance_id', 'giveasap_type', 'giveasap_extra_entries', 'giveasap_text', 'giveasap_winners', 'giveasap_registered_users', 'giveasap_registered_entries', 'winner_time', 'giveasap_display');
DELETE FROM wp_usermeta WHERE meta_key IN ('_user_import_page', 'giveasap_schedule', 'giveasap_prize', 'end_time', 'sg_extra_actions_max_instance_id', 'giveasap_type', 'giveasap_extra_entries', 'giveasap_text', 'giveasap_winners', 'giveasap_registered_users', 'giveasap_registered_entries', 'winner_time', 'giveasap_display');
DELETE FROM wp_termmeta WHERE meta_key IN ('_user_import_page', 'giveasap_schedule', 'giveasap_prize', 'end_time', 'sg_extra_actions_max_instance_id', 'giveasap_type', 'giveasap_extra_entries', 'giveasap_text', 'giveasap_winners', 'giveasap_registered_users', 'giveasap_registered_entries', 'winner_time', 'giveasap_display');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_user_import_page', 'giveasap_schedule', 'giveasap_prize', 'end_time', 'sg_extra_actions_max_instance_id', 'giveasap_type', 'giveasap_extra_entries', 'giveasap_text', 'giveasap_winners', 'giveasap_registered_users', 'giveasap_registered_entries', 'winner_time', 'giveasap_display');

