-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_video_gallery_slider_settings', 'responsive_video_gallery_plus_lightbox_messages');

