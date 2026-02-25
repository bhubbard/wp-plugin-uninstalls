-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('guan_image_notes_enable_comments_thumbnail', 'guan_image_notes_enable_comment_sync');

