-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'archiveo_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_archiveo_imported', '_archiveo_original_url', '_archiveo_wayback_timestamp', '_archiveo_created', '_wbp_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('_archiveo_imported', '_archiveo_original_url', '_archiveo_wayback_timestamp', '_archiveo_created', '_wbp_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('_archiveo_imported', '_archiveo_original_url', '_archiveo_wayback_timestamp', '_archiveo_created', '_wbp_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_archiveo_imported', '_archiveo_original_url', '_archiveo_wayback_timestamp', '_archiveo_created', '_wbp_created');

