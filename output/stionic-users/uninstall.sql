-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsl_facebook', 'nextend_fb_connect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fb_profile_picture', 'fb_user_access_token', '_wp_attachment_wp_user_avatar', '_stionic_jwt_accept');
DELETE FROM wp_usermeta WHERE meta_key IN ('fb_profile_picture', 'fb_user_access_token', '_wp_attachment_wp_user_avatar', '_stionic_jwt_accept');
DELETE FROM wp_termmeta WHERE meta_key IN ('fb_profile_picture', 'fb_user_access_token', '_wp_attachment_wp_user_avatar', '_stionic_jwt_accept');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fb_profile_picture', 'fb_user_access_token', '_wp_attachment_wp_user_avatar', '_stionic_jwt_accept');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

