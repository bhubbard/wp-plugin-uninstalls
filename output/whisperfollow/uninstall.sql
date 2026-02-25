-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whisperfollow_db_version', 'whisperfollow_pushsubs', 'whisperfollow_log', 'plugin_error');

