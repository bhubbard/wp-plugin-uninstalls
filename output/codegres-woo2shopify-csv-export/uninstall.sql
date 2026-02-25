-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_vendor', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_cost');
DELETE FROM wp_usermeta WHERE meta_key IN ('_vendor', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_cost');
DELETE FROM wp_termmeta WHERE meta_key IN ('_vendor', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_cost');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_vendor', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_cost');

