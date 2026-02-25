-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tuxbfu_file_scan', 'tuxedo_big_file_uploads_install_time', 'tuxbfu_max_upload_size', 'tuxbfu_settings', 'ms_files_rewriting', 'tuxbfu_chunk_size', 'tuxbfu_max_retries');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'bffu_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'bffu_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'bffu_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'bffu_notice_%';

