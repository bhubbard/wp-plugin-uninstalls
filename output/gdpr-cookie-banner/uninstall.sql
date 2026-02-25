-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pp_cookie_popup_message', 'pp_banner_position', 'pp_banner_size', 'pp_banner_background_color', 'pp_banner_font', 'pp_banner_font_size');

