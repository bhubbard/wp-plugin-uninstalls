-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsgcal_tokens', 'bsgcal_settings', 'bsgcal_version', 'bsgcal_oauth_state', 'bsgcal_calendar_cache');

