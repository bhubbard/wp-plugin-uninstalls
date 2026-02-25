-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('multiSMTP_server_count', 'multiSMTP_lastServer', 'multiSMTP_from_address', 'multiSMTP_from_name');
DELETE FROM wp_options WHERE option_name LIKE '%_host';
DELETE FROM wp_options WHERE option_name LIKE '%_port';
DELETE FROM wp_options WHERE option_name LIKE '%_username';
DELETE FROM wp_options WHERE option_name LIKE '%_password';
DELETE FROM wp_options WHERE option_name LIKE '%_security';

