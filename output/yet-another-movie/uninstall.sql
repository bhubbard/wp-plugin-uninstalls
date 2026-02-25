-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('moviehelper-version', 'moviehelper_tmdb_settings', 'moviehelper_settings', 'tmdb_api_key');

