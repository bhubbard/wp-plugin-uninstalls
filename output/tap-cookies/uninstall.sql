-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tap_cookies_list', 'tap_cookies_information_box_title', 'tap_cookies_information_box_text', 'tap_cookies_information_box_position');

