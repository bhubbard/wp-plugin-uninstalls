-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('one_time_login_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('one_time_login_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('one_time_login_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('one_time_login_token');

