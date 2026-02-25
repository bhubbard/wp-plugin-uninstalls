-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edw_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('articles', 'sections', 'export_status_timestamp', 'export_status_user_id', 'section-order');
DELETE FROM wp_usermeta WHERE meta_key IN ('articles', 'sections', 'export_status_timestamp', 'export_status_user_id', 'section-order');
DELETE FROM wp_termmeta WHERE meta_key IN ('articles', 'sections', 'export_status_timestamp', 'export_status_user_id', 'section-order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('articles', 'sections', 'export_status_timestamp', 'export_status_user_id', 'section-order');

