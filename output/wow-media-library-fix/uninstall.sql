-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wow_media_library_fix_status', 'wow_media_library_fix_status_unreferenced_basenames');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attached_file', '_wp_attachment_backup_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attached_file', '_wp_attachment_backup_sizes');

