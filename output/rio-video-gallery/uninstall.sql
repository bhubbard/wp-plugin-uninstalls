-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('video_gallery_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('video_provider', 'video_id', 'video_link_target', 'video_post_order', 'image');
DELETE FROM wp_usermeta WHERE meta_key IN ('video_provider', 'video_id', 'video_link_target', 'video_post_order', 'image');
DELETE FROM wp_termmeta WHERE meta_key IN ('video_provider', 'video_id', 'video_link_target', 'video_post_order', 'image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('video_provider', 'video_id', 'video_link_target', 'video_post_order', 'image');

