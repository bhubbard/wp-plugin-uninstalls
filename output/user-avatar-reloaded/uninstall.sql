-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avatar_default_wp_user_avatar', 'wp_user_avatar_allow_upload', 'wp_user_avatar_disable_gravatar', 'wp_user_avatar_edit_avatar', 'wp_user_avatar_resize_crop', 'wp_user_avatar_resize_h', 'wp_user_avatar_resize_upload', 'wp_user_avatar_resize_w', 'wp_user_avatar_tinymce', 'wp_user_avatar_upload_size_limit', 'cron', 'wpua_hash_gravatar', 'wp_user_avatar_default_avatar_updated', 'wp_user_avatar_users_updated', 'wp_user_avatar_media_updated', 'mo_dismiss_adnotice');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

