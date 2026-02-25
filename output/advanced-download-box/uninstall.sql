-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced_download_box_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_advanced_download_box_description', '_advanced_download_box_links');
DELETE FROM wp_usermeta WHERE meta_key IN ('_advanced_download_box_description', '_advanced_download_box_links');
DELETE FROM wp_termmeta WHERE meta_key IN ('_advanced_download_box_description', '_advanced_download_box_links');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_advanced_download_box_description', '_advanced_download_box_links');

