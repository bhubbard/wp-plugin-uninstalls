-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'dlm_file_version_ids_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_files', '_version', '_filesize', '_md5', '_sha1', '_crc32', '_sha256', 'edd_download_files');
DELETE FROM wp_usermeta WHERE meta_key IN ('_files', '_version', '_filesize', '_md5', '_sha1', '_crc32', '_sha256', 'edd_download_files');
DELETE FROM wp_termmeta WHERE meta_key IN ('_files', '_version', '_filesize', '_md5', '_sha1', '_crc32', '_sha256', 'edd_download_files');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_files', '_version', '_filesize', '_md5', '_sha1', '_crc32', '_sha256', 'edd_download_files');

