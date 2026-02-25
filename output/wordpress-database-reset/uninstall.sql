-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('current_theme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens', 'default_password_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens', 'default_password_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens', 'default_password_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens', 'default_password_nag');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_password_nag';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_password_nag';

