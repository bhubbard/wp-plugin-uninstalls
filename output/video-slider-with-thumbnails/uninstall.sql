-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgwt_video_slider_settings', 'wp_vgallery_thumbnail_msg');

