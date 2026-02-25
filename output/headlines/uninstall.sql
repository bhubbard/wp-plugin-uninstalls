-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('use_fileupload', 'ImageHeadline_options', 'ImageHeadline_settings');

