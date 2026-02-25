-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gb_browser_resize_quality', 'gb_browser_resize_width', 'gb_browser_resize_height');
DELETE FROM wp_options WHERE option_name LIKE 'gb_browser_resize_%';
DELETE FROM wp_options WHERE option_name LIKE 'large_size_%';

