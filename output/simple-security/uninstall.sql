-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('users_page_access_log_per_page', 'simple-security-ip-blacklist', 'simple-security-settings', 'simple_security_db_version', 'simple_security_plugin', 'simple_security', 'simple_security_installed', 'simple_security_ip_blacklist', 'simple_security_nag');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login');

