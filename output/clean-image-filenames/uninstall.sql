-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clean_image_filenames_plugin_version', 'clean_image_filenames_mime_types', '_clean_image_filenames_original_filename');

