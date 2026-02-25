-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_cdn_update_data';
DELETE FROM wp_options WHERE option_name LIKE '%_update_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_cdn_data';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%_detected';
DELETE FROM wp_options WHERE option_name LIKE '%_replace_from';
DELETE FROM wp_options WHERE option_name LIKE '%_replace_to';

