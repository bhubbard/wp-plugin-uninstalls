-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_no_access_url';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_login';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_login_url';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ip_addresses');
DELETE FROM wp_usermeta WHERE meta_key IN ('ip_addresses');
DELETE FROM wp_termmeta WHERE meta_key IN ('ip_addresses');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ip_addresses');

