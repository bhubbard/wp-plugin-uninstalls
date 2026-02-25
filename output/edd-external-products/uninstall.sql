-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edd_external_product_url', '_edd_external_product_button');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edd_external_product_url', '_edd_external_product_button');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edd_external_product_url', '_edd_external_product_button');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edd_external_product_url', '_edd_external_product_button');

