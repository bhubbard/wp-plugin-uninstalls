-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssmhs_title_priority', 'ssmhs_desc_priority', 'ssmhs_robots_priority', 'wpseo_taxonomy_meta');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_title', '_yoast_wpseo_metadesc');

