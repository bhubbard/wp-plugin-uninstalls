-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disablegeneratethumbnails_threshold', 'disablegeneratethumbnails_exif_rotate', 'disablegeneratethumbnails');

