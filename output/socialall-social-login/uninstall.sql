-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sk_login_pass', 'nickname', 'first_name', 'last_name', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('sk_login_pass', 'nickname', 'first_name', 'last_name', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('sk_login_pass', 'nickname', 'first_name', 'last_name', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sk_login_pass', 'nickname', 'first_name', 'last_name', 'description');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sk_login_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sk_login_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sk_login_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sk_login_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_username';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_username';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_username';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_username';

