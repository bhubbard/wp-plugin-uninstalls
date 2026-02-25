-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('continuous_thumbnail_slider_plus_lightbox_settings', 'continuous_thumbnail_slider_plus_lightbox_messages');

