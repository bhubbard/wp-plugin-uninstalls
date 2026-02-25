-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ba_cookie_link', 'ba_privacy_link', 'ba_cookie_text', 'ba_privacy_text', 'ba_set_cookie_on_interaction', 'ba_admin_bar_text', 'ba_button_color', 'ba_button_text', 'ba_json');

