-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prime_feed_default_age_group', 'prime_feed_default_gender', 'prime_feed_require_images', 'prime_feed_color_attributes', 'prime_feed_size_attributes', 'prime_feed_size_case', 'prime_feed_memory_limit_warning', 'default_product_cat');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_feedcraft_gtin', '_gtin', '_feedcraft_mpn', '_mpn', '_gmc_age_group', '_gmc_gender', '_brand', '_color', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_feedcraft_gtin', '_gtin', '_feedcraft_mpn', '_mpn', '_gmc_age_group', '_gmc_gender', '_brand', '_color', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_feedcraft_gtin', '_gtin', '_feedcraft_mpn', '_mpn', '_gmc_age_group', '_gmc_gender', '_brand', '_color', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_feedcraft_gtin', '_gtin', '_feedcraft_mpn', '_mpn', '_gmc_age_group', '_gmc_gender', '_brand', '_color', '_sku');

