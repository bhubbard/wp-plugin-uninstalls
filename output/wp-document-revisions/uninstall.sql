-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('document_upload_directory', 'document_slug', 'document_link_date', 'rss_language', 'settings_errors', 'wpdr_activation_issue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', '_wpdr_meta_hidden');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', '_wpdr_meta_hidden');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', '_wpdr_meta_hidden');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_thumbnail_id', '_wp_attachment_metadata', '_wpdr_meta_hidden');

