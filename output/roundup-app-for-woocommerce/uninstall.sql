-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('roundup_advanced_settings', 'roundup_api_key', 'roundup_public_key', 'roundup_beta_product');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibility', '_price', '_regular_price', '_downloadable', '_virtual', '_tax-status', '_tax_class', '_thumbnail_id', '_product_attributes', '_stock', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibility', '_price', '_regular_price', '_downloadable', '_virtual', '_tax-status', '_tax_class', '_thumbnail_id', '_product_attributes', '_stock', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibility', '_price', '_regular_price', '_downloadable', '_virtual', '_tax-status', '_tax_class', '_thumbnail_id', '_product_attributes', '_stock', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibility', '_price', '_regular_price', '_downloadable', '_virtual', '_tax-status', '_tax_class', '_thumbnail_id', '_product_attributes', '_stock', '_sku');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_%';

