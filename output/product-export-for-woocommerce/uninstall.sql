-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'PMXI_Plugin_Options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', '_sku', '_tax_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

