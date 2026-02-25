-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_eb_cf_chu_de_chinh');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eb_product_sku', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eb_product_sku', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eb_product_sku', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eb_product_sku', '_sku');

