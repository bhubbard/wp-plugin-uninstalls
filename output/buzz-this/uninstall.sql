-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buzz_lang', 'buzz_button_type', 'buzz_set_lang');

