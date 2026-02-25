-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('responsive_thumbnail_slider_settings', 'responsive_thumbnail_slider_messages');

