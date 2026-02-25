-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_thumbnail_slider_plus_lightbox_settings', 'responsive_thumbnail_slider_plus_lightbox_messages');

