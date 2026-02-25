-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_user_avatars_roles', 'wp_user_avatars_block_gravatar', 'wp_user_avatars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_avatars', 'wp_user_avatars_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_avatars', 'wp_user_avatars_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_avatars', 'wp_user_avatars_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_avatars', 'wp_user_avatars_rating');

