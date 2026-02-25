-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_flashcard_width_setting', 'wp_flashcard_height_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('falshcard_slides', 'flashcard_short_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('falshcard_slides', 'flashcard_short_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('falshcard_slides', 'flashcard_short_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('falshcard_slides', 'flashcard_short_code');

