-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('videoshop_info', 'videoshop_template', 'videoshop_slider_layout', 'videoshop_slider_responsive', 'videoshop_sliderautoplay', 'videoshop_slider_swipe', 'videoshop_sliderfade', 'videoshop_arrowinfinite', 'videoshop_arrowdisable', 'videoshop_arrow_thumb', 'custom_icon', 'videoshop_show_lightbox', 'videoshop_show_zoom', 'videoshop_zoomlevel', 'videoshop_gallery_action', 'videoshop_hide_thumbnails', 'videoshop_hide_thumbnail', 'videoshop_thumbnails_to_show', 'videoshop_adaptive_height', 'videoshop_show_only_video', 'videoshop_controls', 'videoshop_videoloop', 'videoshop_vid_autoplay', 'videoshop_place_of_the_video', 'videoshop_arrowcolor', 'videoshop_arrowbgcolor', 'videoshop_aspect_ratio', 'videoshop_on_shop_page', 'videoshop_options', 'videoshop-plugin_setting_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_videoshop_product_video_type', '_videoshop_video_text_url', '_videoshop_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_videoshop_video_upload_date', '_videoshop_video_name', '_videoshop_video_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_videoshop_product_video_type', '_videoshop_video_text_url', '_videoshop_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_videoshop_video_upload_date', '_videoshop_video_name', '_videoshop_video_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_videoshop_product_video_type', '_videoshop_video_text_url', '_videoshop_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_videoshop_video_upload_date', '_videoshop_video_name', '_videoshop_video_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_videoshop_product_video_type', '_videoshop_video_text_url', '_videoshop_product_video_thumb_ids', '_custom_thumbnail', '_video_schema', '_videoshop_video_upload_date', '_videoshop_video_name', '_videoshop_video_description');

