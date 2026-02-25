-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_screen_options_limit', 'sp_screen_options_minchar');

