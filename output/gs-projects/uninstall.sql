-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gs_projects_active_time', 'gs_projects_review_dismiss', 'gsplugins-pro-plugins', 'gsplugins_free_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gs_skil', '_gs_url', '_gs_crev', '_gs_crat', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gs_skil', '_gs_url', '_gs_crev', '_gs_crat', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gs_skil', '_gs_url', '_gs_crev', '_gs_crat', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gs_skil', '_gs_url', '_gs_crev', '_gs_crat', '_wp_attachment_image_alt');

