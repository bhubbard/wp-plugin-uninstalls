-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ja_bbpress_tinymce_full', 'ja_bbpress_tinymce_media');

