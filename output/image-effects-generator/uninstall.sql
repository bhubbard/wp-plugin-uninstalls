-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('black_and_white', 'blurred', 'negative', 'pixelate', 'sepia', 'sharpened');

