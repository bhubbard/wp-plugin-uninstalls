-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fakturama_setting', 'neosconnectorforfakturama-hide-review-notice');
DELETE FROM wp_options WHERE option_name LIKE '%_timezone';
DELETE FROM wp_options WHERE option_name LIKE '%_debug';

