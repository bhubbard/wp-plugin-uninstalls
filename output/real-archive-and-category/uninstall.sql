-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('real_archive_page_styles', 'real_archive_page_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('archive_face_content', 'archive_related_categories', 'archive_related_pages');
DELETE FROM wp_usermeta WHERE meta_key IN ('archive_face_content', 'archive_related_categories', 'archive_related_pages');
DELETE FROM wp_termmeta WHERE meta_key IN ('archive_face_content', 'archive_related_categories', 'archive_related_pages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('archive_face_content', 'archive_related_categories', 'archive_related_pages');

