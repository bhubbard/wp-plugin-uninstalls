-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nickx_slider_layout', 'nickx_sliderautoplay', 'nickx_arrowinfinite', 'nickx_arrowdisable', 'nickx_arrow_thumb', 'nickx_hide_thumbnails', 'nickx_gallery_action', 'nickx_adaptive_height', 'nickx_place_of_the_video', 'nickx_rtl', 'nickx_videoloop', 'nickx_vid_autoplay', 'nickx_template', 'nickx_controls', 'nickx_show_lightbox', 'nickx_show_zoom', 'nickx_show_only_video', 'nickx_thumbnails_to_show', 'nickx_arrowcolor', 'nickx_arrowbgcolor', 'wc_product_iframe_token', 'custom_icon', 'nickx_options', 'nickx-plugin_setting_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nickx_product_video_type', '_custom_api_product_url_', '_product_video_thumb_url', '_custom_thumbnail', '_custom_api_product_thumbnail_', '_custom_api_product_id_');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nickx_product_video_type', '_custom_api_product_url_', '_product_video_thumb_url', '_custom_thumbnail', '_custom_api_product_thumbnail_', '_custom_api_product_id_');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nickx_product_video_type', '_custom_api_product_url_', '_product_video_thumb_url', '_custom_thumbnail', '_custom_api_product_thumbnail_', '_custom_api_product_id_');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nickx_product_video_type', '_custom_api_product_url_', '_product_video_thumb_url', '_custom_thumbnail', '_custom_api_product_thumbnail_', '_custom_api_product_id_');

