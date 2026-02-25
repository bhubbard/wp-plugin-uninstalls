-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revenueflex_settings_startPage', 'revenueflex_api');
DELETE FROM wp_options WHERE option_name LIKE 'revenueflex_settings%';
DELETE FROM wp_options WHERE option_name LIKE 'revenueflex_settings_%';

