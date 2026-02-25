-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basic_user_avatars_caps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('basic_user_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('basic_user_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('basic_user_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('basic_user_avatar');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

