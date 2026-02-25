-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_new_email';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%samaccountname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%samaccountname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%samaccountname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%samaccountname';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_disabled_reason';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_disabled_reason';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_disabled_reason';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_disabled_reason';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%userprincipalname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%userprincipalname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%userprincipalname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%userprincipalname';

