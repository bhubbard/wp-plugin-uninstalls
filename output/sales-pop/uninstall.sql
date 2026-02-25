-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_permalinks', 'sm_mode', 'woocommerce_store_address', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'woocommerce_price_num_decimals', 'woocommerce_price_decimal_sep');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_beeketing_option1', 'thumbnail_id', '_price', '_regular_price', '_sale_price', '_manage_stock', '_backorders', '_stock', '_sku', '_downloadable', '_downloadable_files', '_virtual');
DELETE FROM wp_usermeta WHERE meta_key IN ('_beeketing_option1', 'thumbnail_id', '_price', '_regular_price', '_sale_price', '_manage_stock', '_backorders', '_stock', '_sku', '_downloadable', '_downloadable_files', '_virtual');
DELETE FROM wp_termmeta WHERE meta_key IN ('_beeketing_option1', 'thumbnail_id', '_price', '_regular_price', '_sale_price', '_manage_stock', '_backorders', '_stock', '_sku', '_downloadable', '_downloadable_files', '_virtual');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_beeketing_option1', 'thumbnail_id', '_price', '_regular_price', '_sale_price', '_manage_stock', '_backorders', '_stock', '_sku', '_downloadable', '_downloadable_files', '_virtual');

