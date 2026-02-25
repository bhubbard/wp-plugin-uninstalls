-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kgvid_video_embed_network_options', 'kgvid_video_embed_options', 'kgvid_video_embed_cms_switch', 'active_sitewide_plugins', 'jetpack_options', 'jetpack-twitter-cards-site-tag', 'kgvid_video_embed_queue', 'cron', 'wp_attachment_pages_enabled', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'fs_storage_logger', 'fs_active_plugins', 'kgvid_new_attachment_transient', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'kgvid_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_kgflashmediaplayer-format', '_kgflashmediaplayer-pickedformat', '_kgflashmediaplayer-poster-id', '_kgflashmediaplayer-poster', '_kgflashmediaplayer-video-id', '_kgvid-meta', '_kgflashmediaplayer-embed', '_kgflashmediaplayer-externalurl', '_wp_attached_file', '_thumbnail-id', '_kgvid_first_embedded_video', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_kgflashmediaplayer-format', '_kgflashmediaplayer-pickedformat', '_kgflashmediaplayer-poster-id', '_kgflashmediaplayer-poster', '_kgflashmediaplayer-video-id', '_kgvid-meta', '_kgflashmediaplayer-embed', '_kgflashmediaplayer-externalurl', '_wp_attached_file', '_thumbnail-id', '_kgvid_first_embedded_video', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_kgflashmediaplayer-format', '_kgflashmediaplayer-pickedformat', '_kgflashmediaplayer-poster-id', '_kgflashmediaplayer-poster', '_kgflashmediaplayer-video-id', '_kgvid-meta', '_kgflashmediaplayer-embed', '_kgflashmediaplayer-externalurl', '_wp_attached_file', '_thumbnail-id', '_kgvid_first_embedded_video', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_kgflashmediaplayer-format', '_kgflashmediaplayer-pickedformat', '_kgflashmediaplayer-poster-id', '_kgflashmediaplayer-poster', '_kgflashmediaplayer-video-id', '_kgvid-meta', '_kgflashmediaplayer-embed', '_kgflashmediaplayer-externalurl', '_wp_attached_file', '_thumbnail-id', '_kgvid_first_embedded_video', '_yoast_wpseo_metadesc', '_aioseop_description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_kgflashmediaplayer-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_kgflashmediaplayer-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_kgflashmediaplayer-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_kgflashmediaplayer-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-mime';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-mime';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-mime';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-mime';

