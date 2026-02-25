-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('global_styles', 'gutenberg_global_styles');
DELETE FROM wp_options WHERE option_name LIKE 'global_styles_%';
DELETE FROM wp_options WHERE option_name LIKE 'gutenberg_global_styles_%';

