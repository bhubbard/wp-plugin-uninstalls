-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcerply_api_error', 'wcerply_sync_enabled', 'wcerply_installation_id', 'wcerply_product_term_map', 'wcerply_vat_rates_map', 'wcerply_stats_total_categories', 'wcerply_stats_total_products', 'woocommerce_enable_reviews', 'woocommerce_prices_include_tax', 'wcerply_stats_total_variations', 'wcerply_generating_queue', 'wcerply_license_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_erply_product_id', '_attachment_filename', 'order');
DELETE FROM wp_usermeta WHERE meta_key IN ('_erply_product_id', '_attachment_filename', 'order');
DELETE FROM wp_termmeta WHERE meta_key IN ('_erply_product_id', '_attachment_filename', 'order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_erply_product_id', '_attachment_filename', 'order');

