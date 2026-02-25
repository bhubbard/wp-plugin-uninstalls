-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('product_geolocation_for_woo_version', 'product_geolocation_for_woo_missing_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wprwcp_product_gmap_address', '_wprwcp_product_gmap_latitude', '_wprwcp_product_gmap_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wprwcp_product_gmap_address', '_wprwcp_product_gmap_latitude', '_wprwcp_product_gmap_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wprwcp_product_gmap_address', '_wprwcp_product_gmap_latitude', '_wprwcp_product_gmap_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wprwcp_product_gmap_address', '_wprwcp_product_gmap_latitude', '_wprwcp_product_gmap_longitude');

