-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmpg_licence_index', 'wcmpg_licence_key', 'WCMPH_hide_notice');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

