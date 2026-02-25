-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('salsapress_caches', 'salsapress_options', 'my_theme_options');

