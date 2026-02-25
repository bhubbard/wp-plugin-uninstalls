-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_woocommerce_product_tabs_enabled', 'woocommerce_version', 'alg_wc_product_tabs_standard_tabs_enabled', 'alg_wc_product_tabs_global_tabs_enabled', 'alg_custom_product_tabs_global_show_hide_products_option_type', 'alg_custom_product_tabs_local_enabled', 'alg_wc_product_tabs_variations_tabs_enabled', 'alg_wc_product_tabs_variations_tabs_title', 'alg_wc_product_tabs_variations_tabs_priority', 'alg_wc_product_tabs_variations_tabs_content', 'alg_wc_product_tabs_wpautop', 'alg_wc_product_tabs_version', 'alg_custom_product_tabs_global_add_sku_to_products_list', 'alg_custom_product_tabs_local_wp_editor_enabled', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_disable';
DELETE FROM wp_options WHERE option_name LIKE '%_priority';
DELETE FROM wp_options WHERE option_name LIKE '%_title';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_id_global_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_content_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_priority_%';
DELETE FROM wp_options WHERE option_name LIKE '%_sku';
DELETE FROM wp_options WHERE option_name LIKE '%_id';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_global_hide_in_cats_ids_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_custom_product_tabs_title_global_show_in_cats_ids_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

