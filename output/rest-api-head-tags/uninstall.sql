-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frontity_headtags_cache_token', 'frontity_headtags_settings');

