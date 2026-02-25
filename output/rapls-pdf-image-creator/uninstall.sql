-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rapls_pic_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_rapls_pic_is_thumbnail', '_rapls_pic_source_pdf', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_rapls_pic_is_thumbnail', '_rapls_pic_source_pdf', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_rapls_pic_is_thumbnail', '_rapls_pic_source_pdf', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_rapls_pic_is_thumbnail', '_rapls_pic_source_pdf', '_wp_attached_file');

