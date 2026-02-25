-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-reset', 'current_theme', 'wplang', 'wp-reset-snapshots', 'wpr_active_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wf_licensing_%';
DELETE FROM wp_options WHERE option_name LIKE 'wf_install_error_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('default_password_nag');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag';

