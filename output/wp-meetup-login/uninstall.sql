-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_basic_options';

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
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_user_profile';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_user_profile';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_user_profile';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_user_profile';

