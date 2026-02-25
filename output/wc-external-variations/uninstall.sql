-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcev_external_url', '_wcev_external_sku', '_wcev_external_status', '_wcev_external_add_to_cart_text');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcev_external_url', '_wcev_external_sku', '_wcev_external_status', '_wcev_external_add_to_cart_text');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcev_external_url', '_wcev_external_sku', '_wcev_external_status', '_wcev_external_add_to_cart_text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcev_external_url', '_wcev_external_sku', '_wcev_external_status', '_wcev_external_add_to_cart_text');

