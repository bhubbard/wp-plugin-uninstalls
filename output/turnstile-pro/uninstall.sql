-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cftpx_site_key', 'cftpx_secret_key', 'cftpx_visible_mode', 'cftpx_enabled_forms', 'cftpx_custom_error', 'cftpx_ip_whitelist');

