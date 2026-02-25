-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alobaidi_full_background_random', 'alobaidi_full_background_link');

