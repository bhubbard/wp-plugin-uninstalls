-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trt_pvc_custom_css', 'trt_pvc_track_ip', 'trt_pvc_archive_columns', 'trt_pvc_posts_per_page', 'trt_pvc_show_column', 'trt_pvc_custom_post_type', 'trt_pvc_sort_by_views');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('trt_pvc_tracked_ips', 'trt_pvc_post_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('trt_pvc_tracked_ips', 'trt_pvc_post_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('trt_pvc_tracked_ips', 'trt_pvc_post_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('trt_pvc_tracked_ips', 'trt_pvc_post_views');

