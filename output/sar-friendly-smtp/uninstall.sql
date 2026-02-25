-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sarfsmtp_username', 'sarfsmtp_password', 'sarfsmtp_smtp_server', 'sarfsmtp_port', 'sarfsmtp_encryption', 'sarfsmtp_from_address', 'sarfsmtp_from_name', 'sarfsmtp_debug_mode', 'sarfsmtp_allow_invalid_ssl', 'sarfsmtp_version', 'sarfsmtp_settings');
DELETE FROM wp_options WHERE option_name LIKE 'sarfsmtp_%';

