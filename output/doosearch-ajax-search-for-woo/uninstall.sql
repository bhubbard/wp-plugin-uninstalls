-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doosearchas_search_main_options', 'doosearchas_search_style_options', 'doosearchas_search_upgrade_options', 'doosearchas_search_filter_options', 'doosearchas_search_product_options', 'doosearchas_search_additional_options', 'rewrite_rules', 'woocommerce_placeholder_image');

