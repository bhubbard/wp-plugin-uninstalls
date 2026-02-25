-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_posts_grid_shortcode_prefs', 'gs_posts_grid_version', 'gs_pg_activation_redirect', 'gs_pg_active_time', 'gs_pg_maybe_later', 'gsadmin_maybe_later', 'GS_Posts_Grid_plugin_permalinks_flushed', 'gs_posts_grid_shortcode_layout', 'gs_posts_grid_visibility_order', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE 'gs_posts_grid_popup_visibility_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gs_posts_video_url', 'gs_posts_audio_url', 'gs_posts_gallery', 'gs_posts_media', 'order');
DELETE FROM wp_usermeta WHERE meta_key IN ('gs_posts_video_url', 'gs_posts_audio_url', 'gs_posts_gallery', 'gs_posts_media', 'order');
DELETE FROM wp_termmeta WHERE meta_key IN ('gs_posts_video_url', 'gs_posts_audio_url', 'gs_posts_gallery', 'gs_posts_media', 'order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gs_posts_video_url', 'gs_posts_audio_url', 'gs_posts_gallery', 'gs_posts_media', 'order');

