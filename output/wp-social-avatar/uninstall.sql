-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_avatar_capability');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_avatar_profile', 'wp_fb_profile', 'wp_gplus_profile');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_avatar_profile', 'wp_fb_profile', 'wp_gplus_profile');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_avatar_profile', 'wp_fb_profile', 'wp_gplus_profile');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_avatar_profile', 'wp_fb_profile', 'wp_gplus_profile');

