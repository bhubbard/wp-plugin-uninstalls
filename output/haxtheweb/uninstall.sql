-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('haxtheweb_location', 'haxtheweb_location_other', 'haxtheweb_blox', 'haxtheweb_stax', 'haxtheweb_pk', 'haxtheweb_autoload_element_list', 'haxtheweb_local_build_file');
DELETE FROM wp_options WHERE option_name LIKE '%_key';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_my_file_upload');
DELETE FROM wp_usermeta WHERE meta_key IN ('_my_file_upload');
DELETE FROM wp_termmeta WHERE meta_key IN ('_my_file_upload');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_my_file_upload');

