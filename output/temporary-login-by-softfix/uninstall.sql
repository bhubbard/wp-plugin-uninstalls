-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('soft_fix_login_logs');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('soft_fix_meta_expire', 'soft_fix_temp_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('soft_fix_meta_expire', 'soft_fix_temp_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('soft_fix_meta_expire', 'soft_fix_temp_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('soft_fix_meta_expire', 'soft_fix_temp_user');

