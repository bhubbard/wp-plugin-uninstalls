-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_count', 'wp_calendar_block_has_published_posts', 'gutenberg-experiments', 'site_logo', 'wp_notes_notify', 'active_templates', 'gutenberg_version_migration', 'gutenberg_last_synchronize_theme_template_checks', 'gutenberg_last_synchronize_theme_template-part_checks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'footnotes', 'sync_status', '_wp_font_face_file', 'is_inactive_by_default', '_menu_item_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'footnotes', 'sync_status', '_wp_font_face_file', 'is_inactive_by_default', '_menu_item_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'footnotes', 'sync_status', '_wp_font_face_file', 'is_inactive_by_default', '_menu_item_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'footnotes', 'sync_status', '_wp_font_face_file', 'is_inactive_by_default', '_menu_item_content');

