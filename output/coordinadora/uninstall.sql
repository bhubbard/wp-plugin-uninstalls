-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_coordinadora_settings', 'woocommerce_store_city');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_coordinadora_warehouse');
DELETE FROM wp_usermeta WHERE meta_key IN ('_coordinadora_warehouse');
DELETE FROM wp_termmeta WHERE meta_key IN ('_coordinadora_warehouse');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_coordinadora_warehouse');

