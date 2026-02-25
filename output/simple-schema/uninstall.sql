-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sdc_default_schema', 'sdc_default_schema_content', 'sdc_defaults', 'sdc_settings', 'moup_uploads', 'sdc_uploads');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_opengraph-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_opengraph-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_opengraph-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_opengraph-image');

