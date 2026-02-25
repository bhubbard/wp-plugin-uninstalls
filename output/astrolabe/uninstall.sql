-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('astr_astrolabe_format', 'astr_astrolabe_color_theme');

