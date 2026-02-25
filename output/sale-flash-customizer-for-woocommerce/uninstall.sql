-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'alg_wc_sale_flash_customizer_global_enabled', 'alg_wc_sale_flash_customizer_per_product_enabled', 'alg_wc_sale_flash_customizer_per_product_cat_enabled', 'alg_wc_sale_flash_customizer_per_product_tag_enabled', 'alg_wc_sale_flash_customizer_hide_everywhere', 'alg_wc_sale_flash_customizer_hide_on_archives', 'alg_wc_sale_flash_customizer_hide_on_single', 'alg_wc_sale_flash_customizer_global_html', 'alg_wc_sale_flash_customizer_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_list';
DELETE FROM wp_options WHERE option_name LIKE '%_html';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

