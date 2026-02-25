-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zerostate_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag';

