-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_importer_unique_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_importer_unique_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_importer_unique_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_importer_unique_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_metakeywords');

