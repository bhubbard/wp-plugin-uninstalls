-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_sku_for_woocommerce_enabled', 'alg_sku_new_products_generate_enabled', 'alg_sku_for_woocommerce_allow_duplicates', 'alg_sku_for_woocommerce_search_enabled', 'alg_sku_for_woocommerce_search_algorithm', 'alg_sku_add_to_customer_emails', 'alg_sku_categories_enabled', 'alg_sku_tags_enabled', 'alg_sku_for_woocommerce_number_generation_sequential', 'alg_sku_for_woocommerce_variations_handling', 'alg_sku_new_products_generate_only_on_publish', 'woocommerce_version', 'alg_sku_generate_only_for_empty_sku', 'alg_sku_for_woocommerce_template', 'alg_sku_for_woocommerce_prefix', 'alg_sku_for_woocommerce_minimum_number_length', 'alg_sku_for_woocommerce_suffix', 'active_sitewide_plugins', 'alg_sku_generator_version');
DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_sequential_cat_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_suffix_cat_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_sku_suffix_tag_%';
DELETE FROM wp_options WHERE option_name LIKE '%reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

