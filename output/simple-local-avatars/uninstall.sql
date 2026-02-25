-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_local_avatars', 'active_sitewide_plugins', 'simple_local_avatars_mode', 'simple_local_avatar_default', 'simple_local_avatars_caps', 'simple_local_avatar_caps', 'simple_local_avatars_migrations');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simple_local_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simple_local_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simple_local_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'simple_local_avatar');

