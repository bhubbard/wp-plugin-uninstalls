-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_filesize', '_filesmimetype', '_media_files_tools_image_link_to');
DELETE FROM wp_usermeta WHERE meta_key IN ('_filesize', '_filesmimetype', '_media_files_tools_image_link_to');
DELETE FROM wp_termmeta WHERE meta_key IN ('_filesize', '_filesmimetype', '_media_files_tools_image_link_to');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_filesize', '_filesmimetype', '_media_files_tools_image_link_to');

