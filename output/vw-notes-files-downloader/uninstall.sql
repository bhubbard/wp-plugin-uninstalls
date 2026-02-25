-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vw_notes_and_files_downloader_attachment');
DELETE FROM wp_usermeta WHERE meta_key IN ('vw_notes_and_files_downloader_attachment');
DELETE FROM wp_termmeta WHERE meta_key IN ('vw_notes_and_files_downloader_attachment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vw_notes_and_files_downloader_attachment');

