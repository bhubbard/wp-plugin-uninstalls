-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eu_cookie_text_color', 'eu_cookie_bg_color', 'eu_cookie_animation_type', 'eu_cookie_message');

