-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('peg_oauth_settings', 'peg_max_albums_displayed', 'peg_saved_user_name', 'peg_last_album', 'peg_saved_state', 'peg_migrate_state', 'peg_general_settings', 'peg_multisite', 'active_sitewide_plugins', 'peg_roles', 'peg_cache_keys', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE 'pe2%';

