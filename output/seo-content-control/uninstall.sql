-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aioseop_options', 'aiosp_can', 'aiosp_description_format', 'wpseo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('seocc_params');
DELETE FROM wp_usermeta WHERE meta_key IN ('seocc_params');
DELETE FROM wp_termmeta WHERE meta_key IN ('seocc_params');
DELETE FROM wp_commentmeta WHERE meta_key IN ('seocc_params');

