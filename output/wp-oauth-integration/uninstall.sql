-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_access_token';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_profile_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_profile_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_profile_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_profile_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_profile';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_profile';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_profile';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_profile';

