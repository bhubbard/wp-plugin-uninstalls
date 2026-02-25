-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clamav_host', 'clamav_port', 'clamav_timeout');
DELETE FROM wp_options WHERE option_name LIKE 'clamav_%';

