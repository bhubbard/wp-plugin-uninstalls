-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enabled-cf7-form', 'popup_description', 'popup_background', 'image_url', 'popup_font_color', 'popup_width', 'popup_height', 'popup_duration');
DELETE FROM wp_options WHERE option_name LIKE '%cf7error';

