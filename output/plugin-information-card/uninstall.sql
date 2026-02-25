-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pic_format', 'pic_css', 'pic_days');
DELETE FROM wp_options WHERE option_name LIKE 'pic_%';

