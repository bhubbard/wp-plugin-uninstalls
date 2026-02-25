-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alobaidi_fade_color', 'alobaidi_fade_time', 'alobaidi_fade_element');

