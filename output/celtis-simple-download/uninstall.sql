-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('celtisdl_rewrite_slug', 'celtisdl_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_locale', '_cs_download_data', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_locale', '_cs_download_data', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_locale', '_cs_download_data', '_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_locale', '_cs_download_data', '_wp_attached_file', '_wp_attachment_metadata');

