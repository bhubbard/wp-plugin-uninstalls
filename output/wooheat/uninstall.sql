-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_catalog_orderby', 'woo_heat_orderby');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_heat', 'woo_heat_scoville');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_heat', 'woo_heat_scoville');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_heat', 'woo_heat_scoville');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_heat', 'woo_heat_scoville');

