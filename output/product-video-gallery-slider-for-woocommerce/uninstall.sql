-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nickx_slider_layout', 'nickx_slider_responsive', 'nickx_sliderautoplay', 'nickx_sliderfade', 'nickx_arrowinfinite', 'nickx_arrowdisable', 'nickx_arrow_thumb', 'custom_icon', 'nickx_show_lightbox', 'nickx_show_zoom', 'nickx_mobile_zoom', 'nickx_zoomlevel', 'nickx_template', 'nickx_gallery_action', 'nickx_thumbnails_hook', 'nickx_hide_thumbnails', 'nickx_hide_thumbnail', 'nickx_thumbnails_to_show', 'nickx_adaptive_height', 'nickx_show_only_video', 'nickx_controls', 'nickx_poster_img', 'nickx_videoloop', 'nickx_vid_autoplay', 'nickx_place_of_the_video', 'nickx_thumnails_layout', 'nickx_arrowcolor', 'nickx_arrowbgcolor', 'nickx_video_icon_color', 'nickx-plugin_setting_notice', 'nickx_wp_plugin_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nickx_product_video_type', '_nickx_video_text_url', '_nickx_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_nickx_video_upload_date', '_nickx_video_name', '_nickx_video_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nickx_product_video_type', '_nickx_video_text_url', '_nickx_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_nickx_video_upload_date', '_nickx_video_name', '_nickx_video_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nickx_product_video_type', '_nickx_video_text_url', '_nickx_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_nickx_video_upload_date', '_nickx_video_name', '_nickx_video_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nickx_product_video_type', '_nickx_video_text_url', '_nickx_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_nickx_video_upload_date', '_nickx_video_name', '_nickx_video_description');

