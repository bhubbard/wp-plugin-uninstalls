-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mktr_optin_subscribe', '_wc_cog_cost', '_alg_wc_cog_cost', 'product_english_description', 'lems__exclude_ids_from_price', 'billing_phone', 'billing_first_name', 'billing_last_name', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mktr_optin_subscribe', '_wc_cog_cost', '_alg_wc_cog_cost', 'product_english_description', 'lems__exclude_ids_from_price', 'billing_phone', 'billing_first_name', 'billing_last_name', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mktr_optin_subscribe', '_wc_cog_cost', '_alg_wc_cog_cost', 'product_english_description', 'lems__exclude_ids_from_price', 'billing_phone', 'billing_first_name', 'billing_last_name', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mktr_optin_subscribe', '_wc_cog_cost', '_alg_wc_cog_cost', 'product_english_description', 'lems__exclude_ids_from_price', 'billing_phone', 'billing_first_name', 'billing_last_name', 'rating');

