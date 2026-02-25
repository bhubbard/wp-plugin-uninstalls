-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vwi_vend_connect_subdomain', 'vwi_vend_connect_token', 'vwi_vend_connect_cashier', 'vwi_vend_last_import_finish');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woo_vend_product_id', '_current_vend_version', '_imported_images_versions', 'vend_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woo_vend_product_id', '_current_vend_version', '_imported_images_versions', 'vend_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woo_vend_product_id', '_current_vend_version', '_imported_images_versions', 'vend_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woo_vend_product_id', '_current_vend_version', '_imported_images_versions', 'vend_id');

