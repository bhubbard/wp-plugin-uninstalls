-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('boomerang_base', 'boomerang_board_base', 'boomerang_global_options', 'csf_demo_mode', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('boomerang_board_options', 'boomerang_votes', 'boomerang_user_votes', 'color', 'system_note', 'boomerang_vote_data', 'boomerang_unique_voters');
DELETE FROM wp_usermeta WHERE meta_key IN ('boomerang_board_options', 'boomerang_votes', 'boomerang_user_votes', 'color', 'system_note', 'boomerang_vote_data', 'boomerang_unique_voters');
DELETE FROM wp_termmeta WHERE meta_key IN ('boomerang_board_options', 'boomerang_votes', 'boomerang_user_votes', 'color', 'system_note', 'boomerang_vote_data', 'boomerang_unique_voters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('boomerang_board_options', 'boomerang_votes', 'boomerang_user_votes', 'color', 'system_note', 'boomerang_vote_data', 'boomerang_unique_voters');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%';

