-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_responsive_photo_gallery_slider_settings', 'my_responsive_photo_gallery_slider_settings_messages');

