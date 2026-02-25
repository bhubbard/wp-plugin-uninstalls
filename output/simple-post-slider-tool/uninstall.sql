-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_featured_video_url', '_spst_selected_posts', '_spst_autoplay', '_spst_speed', '_spst_slides_per_view');
DELETE FROM wp_usermeta WHERE meta_key IN ('_featured_video_url', '_spst_selected_posts', '_spst_autoplay', '_spst_speed', '_spst_slides_per_view');
DELETE FROM wp_termmeta WHERE meta_key IN ('_featured_video_url', '_spst_selected_posts', '_spst_autoplay', '_spst_speed', '_spst_slides_per_view');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_featured_video_url', '_spst_selected_posts', '_spst_autoplay', '_spst_speed', '_spst_slides_per_view');

