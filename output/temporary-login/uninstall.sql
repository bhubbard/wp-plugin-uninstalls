-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_temporary_login_site_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_temporary_login_pointer_dismissed', '_temporary_login_created_by_user_id', '_temporary_login', '_temporary_login_token', '_temporary_login_expiration');
DELETE FROM wp_usermeta WHERE meta_key IN ('_temporary_login_pointer_dismissed', '_temporary_login_created_by_user_id', '_temporary_login', '_temporary_login_token', '_temporary_login_expiration');
DELETE FROM wp_termmeta WHERE meta_key IN ('_temporary_login_pointer_dismissed', '_temporary_login_created_by_user_id', '_temporary_login', '_temporary_login_token', '_temporary_login_expiration');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_temporary_login_pointer_dismissed', '_temporary_login_created_by_user_id', '_temporary_login', '_temporary_login_token', '_temporary_login_expiration');

