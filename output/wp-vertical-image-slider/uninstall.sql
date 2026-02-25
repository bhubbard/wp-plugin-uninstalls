-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vertical_thumbnail_slider_settings', 'vertical_thumbnail_slider_messages');

