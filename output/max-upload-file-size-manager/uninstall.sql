-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mxsetting', 'mxupload_flag_data', 'mxupload_file_scan', 'mxupload_settings', 'ms_files_rewriting', 'mxupload_plugin_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header');

