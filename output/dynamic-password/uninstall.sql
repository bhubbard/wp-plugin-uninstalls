-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_dy_pwd_master_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dy_pwd_active', '_dy_pwd_val');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dy_pwd_active', '_dy_pwd_val');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dy_pwd_active', '_dy_pwd_val');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dy_pwd_active', '_dy_pwd_val');

