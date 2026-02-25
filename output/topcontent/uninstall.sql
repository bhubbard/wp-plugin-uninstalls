-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('topcont-api-key', 'topcont-api-url', 'topcont-first-h1', '_topcont_key_error', 'topcont-draft', 'topcont-featured-image', 'topcont-author');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_topcont_id', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_usermeta WHERE meta_key IN ('_topcont_id', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_termmeta WHERE meta_key IN ('_topcont_id', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_topcont_id', '_yoast_wpseo_focuskw', '_yoast_wpseo_title', '_yoast_wpseo_metadesc');

