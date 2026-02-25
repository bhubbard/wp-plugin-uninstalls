-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gale_hsa_fsa_ts_sync_progress', 'gale_hsa_fsa_ts_total_products', 'woocommerce_gale_checkout_settings', 'gale_hsa_fsa_ts_products_synced');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_global_unique_id', '_gale_product_id', '_gale_eligibility', '_price', '_sale_currency_prices', '_regular_currency_prices', '_short_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_global_unique_id', '_gale_product_id', '_gale_eligibility', '_price', '_sale_currency_prices', '_regular_currency_prices', '_short_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_global_unique_id', '_gale_product_id', '_gale_eligibility', '_price', '_sale_currency_prices', '_regular_currency_prices', '_short_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_global_unique_id', '_gale_product_id', '_gale_eligibility', '_price', '_sale_currency_prices', '_regular_currency_prices', '_short_description');

