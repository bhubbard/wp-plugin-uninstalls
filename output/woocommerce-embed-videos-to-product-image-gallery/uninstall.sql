-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('embed_videos_autoplay', 'embed_videos_rel', 'embed_videos_showinfo', 'embed_videos_disablekb', 'embed_videos_fs', 'embed_videos_controls', 'embed_videos_hd', 'woocommerce_enable_lightbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('videolink_id', 'video_site', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('videolink_id', 'video_site', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('videolink_id', 'video_site', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('videolink_id', 'video_site', '_thumbnail_id');

