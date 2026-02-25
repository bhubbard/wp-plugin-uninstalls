-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_sf_version', 'api', 'settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_metadata', '_element_path', '_browser_info', '_wp_attachment_context', '_feedback_status', '_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_metadata', '_element_path', '_browser_info', '_wp_attachment_context', '_feedback_status', '_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_metadata', '_element_path', '_browser_info', '_wp_attachment_context', '_feedback_status', '_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_metadata', '_element_path', '_browser_info', '_wp_attachment_context', '_feedback_status', '_url');

