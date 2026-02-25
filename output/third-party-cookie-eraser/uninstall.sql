-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('third_party_cookie_eraser_cookie_name', 'third_party_cookie_eraser_cookie_value', 'third_party_cookie_eraser_lang');

