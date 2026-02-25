-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('registration_ip', 'login_count', 'last_login', 'last_login_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('registration_ip', 'login_count', 'last_login', 'last_login_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('registration_ip', 'login_count', 'last_login', 'last_login_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('registration_ip', 'login_count', 'last_login', 'last_login_ip');

