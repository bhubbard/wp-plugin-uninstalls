-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpseosms', 'wpseo_xml', 'wpseo_taxonomy_meta');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_sitemap-include', '_yoast_wpseo_redirect');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_sitemap-include', '_yoast_wpseo_redirect');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_sitemap-include', '_yoast_wpseo_redirect');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_meta-robots-noindex', '_yoast_wpseo_sitemap-include', '_yoast_wpseo_redirect');

