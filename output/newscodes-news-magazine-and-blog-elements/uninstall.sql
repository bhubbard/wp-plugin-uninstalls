-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newscodes_settings', 'newscodes_shortcodes', '_nc_less_styles', '_nc_less_styles_exclude');

