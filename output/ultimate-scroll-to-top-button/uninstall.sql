-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%icon_padding';
DELETE FROM wp_options WHERE option_name LIKE '%icon_height';
DELETE FROM wp_options WHERE option_name LIKE '%icon_width';
DELETE FROM wp_options WHERE option_name LIKE '%icon_position';
DELETE FROM wp_options WHERE option_name LIKE '%icon_content';
DELETE FROM wp_options WHERE option_name LIKE '%hide_mobile';
DELETE FROM wp_options WHERE option_name LIKE '%enable';

